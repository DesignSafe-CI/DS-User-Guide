# How to Test

## Local Server

> [!WARNING]
> Testing is manual and requires using a command prompt.

You can [test with **PIP** or **Poetry** or **Docker** or **Make**](https://tacc.github.io/mkdocs-tacc/test/#test-locally) as a client.

## Remote Server

> [!WARNING]
> Your test may be overridden by others working on the same test server.

Deploy to our test server:

0. Have a branch with changes ready to deploy.
1. On your branch, edit the [pre-prod workflow config](./.github/workflows/build-pprd.yml) `branches:` list.
2. Commit the change to trigger the workflow.
3. Wait for [GitHub action](https://github.com/DesignSafe-CI/ds-user-guide/actions) to complete.
4. Load https://pprd.designsafe-ci.org/user-guide/.

> [!TIP]
> In the future, we will offer a dedicated test server. Task is pending [issue #61](https://github.com/DesignSafe-CI/DS-User-Guide/issues/61).
