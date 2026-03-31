#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Mode: "validate" (default, exits non-zero on human edit) or "detect" (outputs to GITHUB_OUTPUT)
MODE="${MODE:-validate}"
ALLOWED_BOTS="${ALLOWED_BOTS:-github-actions[bot],dependabot[bot]}"

# Determine the comparison range
is_pr=""
if [ "${GITHUB_EVENT_NAME:-}" = "pull_request" ]; then
  is_pr=1
fi
has_base_ref=""
if [ -n "${GITHUB_BASE_REF:-}" ]; then
  has_base_ref=1
fi
origin_base_ref_exists=""
if [ -n "${GITHUB_BASE_REF:-}" ] && git rev-parse --verify "origin/${GITHUB_BASE_REF}" >/dev/null 2>&1; then
  origin_base_ref_exists=1
fi
if [ -n "$is_pr" ] && [ -n "$has_base_ref" ] && [ -n "$origin_base_ref_exists" ]; then
  BASE_REF="$(git rev-parse "origin/${GITHUB_BASE_REF}")"
  COMPARE_RANGE="$BASE_REF...HEAD"
else
  COMPARE_RANGE="HEAD~1..HEAD"
fi

# Check if requirements.txt changed
if ! git diff --name-only $COMPARE_RANGE | grep -q "^requirements.txt$"; then
  echo "'requirements.txt' unchanged"
  if [ "$MODE" = "detect" ]; then
    echo "is_human_edit=false" >> "${GITHUB_OUTPUT:-/dev/stdout}"
  fi
  exit 0
fi

# Check if requirements.txt differs from base (net change across all commits in range)
if [ -n "$is_pr" ] && [ -n "$has_base_ref" ] && [ -n "$origin_base_ref_exists" ]; then
  BASE_REF_PARSED="origin/${GITHUB_BASE_REF}"
  if git diff --quiet "$BASE_REF_PARSED" HEAD -- requirements.txt; then
    echo "requirements.txt touched but matches base branch (likely reverted): OK"
    if [ "$MODE" = "detect" ]; then
      echo "is_human_edit=false" >> "${GITHUB_OUTPUT:-/dev/stdout}"
    fi
    exit 0
  fi
fi

# Get latest commit that touched requirements.txt
latest_sha=$(git log -1 --pretty=format:'%H' $COMPARE_RANGE -- requirements.txt || true)

if [ -z "$latest_sha" ]; then
  echo "::error::No commits found touching requirements.txt in range $COMPARE_RANGE"
  if [ "$MODE" = "detect" ]; then
    echo "is_human_edit=false" >> "${GITHUB_OUTPUT:-/dev/stdout}"
  fi
  exit 1
fi

latest_author=$(git show -s --format='%an' "$latest_sha")
latest_committer=$(git show -s --format='%cn' "$latest_sha")
latest_message=$(git show -s --format='%B' "$latest_sha")
latest_subject=$(echo "$latest_message" | head -n1 | sed -e 's/[[:space:]]*$//')

# Build a grep-friendly regex from comma-separated allowed bots
allowed_regex=$(echo "$ALLOWED_BOTS" | sed 's/,/\\|/g')

# Check 1: author or committer is allowed bot
if echo "$latest_author" | grep -qE "^($allowed_regex)$" || echo "$latest_committer" | grep -qE "^($allowed_regex)$"; then
  echo "Latest change by allowed bot: OK"
  if [ "$MODE" = "detect" ]; then
    echo "is_human_edit=false" >> "${GITHUB_OUTPUT:-/dev/stdout}"
  fi
  exit 0
fi

# Check 2: commit message exactly matches canonical message
if [ -n "${COMMIT_MSG_FILE:-}" ] && [ -f "$COMMIT_MSG_FILE" ]; then
  canonical_msg=$(sed -n '1p' "$COMMIT_MSG_FILE" | tr -d '\r')
  if [ "$latest_subject" = "$canonical_msg" ]; then
    echo "Latest commit message exactly matches canonical bot message: OK"
    if [ "$MODE" = "detect" ]; then
      echo "is_human_edit=false" >> "${GITHUB_OUTPUT:-/dev/stdout}"
    fi
    exit 0
  fi
fi

# Human edit detected
if [ "$MODE" = "detect" ]; then
  echo "is_human_edit=true" >> "${GITHUB_OUTPUT:-/dev/stdout}"
  echo "offender_author=$latest_author" >> "${GITHUB_OUTPUT:-/dev/stdout}"
  echo "offender_subject=$latest_subject" >> "${GITHUB_OUTPUT:-/dev/stdout}"
  echo "Human edit detected"
  exit 0
else
  echo "::error::You may NOT edit 'requirements.txt'"
  echo "::warning::Undo your changes to requirements.txt, so robot can maintain it."
  echo "::notice::To pin dependencies, use 'poetry add <package-name>'."
  echo "Latest commit: $latest_sha"
  echo "Latest author: $latest_author"
  echo "Latest committer: $latest_committer"
  echo "Latest message: \"$latest_subject\""
  exit 1
fi

echo "'requirements.txt' unchanged or the change is allowed"
