# How to Publish

> [!TIP]
> Any merge (or commit) to `main` branch will publish the documentation.

All commits to `main` will trigger a Docker build and push a new image to `taccwma/tacc-docs:latest`.

A Watchtower service will monitor new pushes to this dockerhub repo and pull down new images _on the fly_ to [https://designsafe-ci.org/user-guide/](https://designsafe-ci.org/user-guide/).

## Automation

* Automatic build for every commit to `main` branch
* Automatic deploy for every build off `main` branch
* Manually build via [GitHub Actions](https://github.com/DesignSafe-CI/DS-User-Guide/actions)
* Manually deploy via [internal process](https://tacc-main.atlassian.net/wiki/x/aBhv)

## Releases

[Releases](https://github.com/DesignSafe-CI/DS-User-Guide/releases) are made when a significant set of **functional** Pull Requests have been merged.
