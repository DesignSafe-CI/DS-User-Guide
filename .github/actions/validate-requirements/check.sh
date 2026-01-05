#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

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

# If requirements.txt changed in comparison range, ensure latest change's commit was authored by an allowed bot, or the latest commit message exactly matches the canonical bot commit message, or fallback to any bot-authored commit
if git diff --name-only $COMPARE_RANGE | grep -q "^requirements.txt$"; then
  # Get commits touching requirements.txt in the range
  commits=$(git log --pretty=format:'%H' $COMPARE_RANGE -- requirements.txt || true)

  if [ -z "$commits" ]; then
    echo "::error::No commits found touching requirements.txt in range $COMPARE_RANGE"
    exit 1
  fi

  # Build a grep-friendly regex from comma-separated allowed bots
  allowed_regex=$(echo "$ALLOWED_BOTS" | sed 's/,/\\|/g')

  # Read canonical commit message first line if available
  canonical_msg=""
  if [ -n "${COMMIT_MSG_FILE:-}" ] && [ -f "$COMMIT_MSG_FILE" ]; then
    canonical_msg=$(sed -n '1p' "$COMMIT_MSG_FILE" | tr -d '\r')
  fi

  # Short check: report any commit touching requirements.txt in the range that is not authored by an allowed bot and does not exactly match the canonical bot commit message (first line)
  offending=$(git log $COMPARE_RANGE --pretty=format:'%H|%an|%s' -- requirements.txt |
    while IFS='|' read -r sha author subject; do
      if echo "$author" | grep -qE "^($allowed_regex)$"; then
        continue
      fi
      if [ -n "$canonical_msg" ] && [ "$subject" = "$canonical_msg" ]; then
        continue
      fi
      printf '%s|%s|%s\n' "$sha" "$author" "$subject"
      break
    done)

  if [ -z "$offending" ]; then
    echo "All commits touching requirements.txt in the range are from allowed bots or canonical bot messages: OK"
    exit 0
  fi

  echo "::error::You may NOT edit 'requirements.txt'"
  echo "::warning::Undo your changes to requirements.txt, so robot can maintain it."
  echo "::notice::To pin dependencies, use 'poetry add <package-name>'."
  echo "Offending commit(s):"
  echo "$offending" | sed 's/^/  /'
  exit 1
fi

echo "'requirements.txt' unchanged (or latest change by allowed bot/marker)"
