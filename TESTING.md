# How to Test

- [On Free Machine](#preview-server)
- [On Your Machine](#ad-hoc-server)
- [On Our Machine](#test-server)

## On Free Machine

> [!TIP]
> Create a pull request; automatically get a remote preview server.

## On Your Machine

> [!NOTE]
> Run a server manually or programatically on your machine.

You can [test with **PIP** or **Poetry** or **Docker** or **Make**](https://tacc.github.io/mkdocs-tacc/test/#test-locally).

## On Our Machine

> [!WARNING]
> Only authorized contributors may deploy to our test server.

0. Have a branch with changes ready to deploy.
1. On your branch, edit the [pre-prod workflow config](./.github/workflows/build-pprd.yml) `branches:` list to include your branch.
2. Commit the change to trigger the workflow.
3. Wait for [GitHub action](https://github.com/DesignSafe-CI/ds-user-guide/actions) to complete.
4. Load https://pprd.designsafe-ci.org/user-guide/.

> [!CAUTION]
> Others can override your test by deploying to this server.
