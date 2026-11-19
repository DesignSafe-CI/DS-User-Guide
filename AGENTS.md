# AGENTS.md

- [Architecture](#architecture)
- [Commits](#commits)
- [Pull Requests](#pull-requests)

## Architecture

This is a **MkDocs** project that can be run with `pip`, Poetry` or Docker. [Read more.](./README.md#developing)

### Services

| Service | Container | Port |
| --- | --- | --- |
| MkDocs | `designsafe_user_guide` | `localhost:8000` |

### Make

Use the `Makefile` instead of raw `docker compose` commands:

| Command | Purpose |
| --- | --- |
| `make build` | Build Docker images |
| `make start` | Start containers (`ARGS="--detach"` for background) |
| `make stop` | Stop containers |

### Lint, Test, Build

- No linting software is configured.
- Every PR automatically gets a preview server via Netlify.

## Commits

- **Format:** `.gitmessage` (fallback: `~/.gitmessage`)

## Pull Requests

- **Title:** `.gitmessage` (fallback: `~/.gitmessage`)
- **Description:** `.github/PULL_REQUEST_TEMPLATE.md`
  - Be concise: plain language, simple sentences; reviewers find detail in the diff. Say what changed, then why (if it matters) — never how.
  - When updating, first re-read the current description, because it may have been edited.
