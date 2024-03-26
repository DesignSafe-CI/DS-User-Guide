# DesignSafe User Guide

DesignSafe ReadTheDocs Documentation with [MkDocs](https://mkdocs.readthedocs.io/).

## Contributing

> [!NOTE]
> For a detailed walkthrough of how to contribute to [Use Cases](https://www.designsafe-ci.org/user-guide/usecases/), see [its README](https://github.com/DesignSafe-CI/DS-User-Guide/blob/main/user-guide/docs/usecases/README.md).

1. [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) this repository.\
    <sup>(unless you are a direct collaborator)</sup>
2. [Edit](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files) relevant files that need update.\
    <sup>([upload images](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository) as necessary)</sup>
4. [Commit](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/about-commits) your changes.
5. [Create a "Pull Request".](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)

## Local Development

### A. Via Python

> [!NOTE]
> This solution uses a different theme than https://designsafe-ci.org/user-guide/.

0. Have Python installed.\
    <sup>Known supported versions are [from 3.10 to 3.12](https://github.com/DesignSafe-CI/DS-User-Guide/blob/6c22d2f/pyproject.toml).</sup>
1. Navigate into your clone of this repo.
2. Install dependencies:\
    <sup>You should only need to do this once, or after a major update.</sup>
    ```shell
    ./bin/tacc-setup.sh
    pip install poetry
    poetry install
    ```
4. Serve the docs:
    ```shell
    poetry shell
    cd user-guide
    mkdocs serve
    ```
    <sup>After the `poetry shell` command, you should be in a Poetry-managed environment. Your prompt might be prefixed with the name of the environment.</sup>
5. Open the website _at the URL echoed by the program_, e.g.
    http://127.0.0.1:8000/user-guide/

### B. Via Docker

0. Have Docker installed.\
    <sup>We recommend doing so via [Docker-Desktop](https://www.docker.com/products/docker-desktop).</sup>
1. Navigate into your clone of this repository.
2. Start the Docker container to serve the docs.
    ```shell
    make build
    make start
    ```
3. Open the website at the URL provided e.g.
    http://0.0.0.1:8000/user-guide/

## Releases

All commits to `main` will trigger a docker build and push a new image to `designsafeci/ds-user-guide:latest`.

A Watchtower service will monitor new pushes to this dockerhub repo and pull down new images on the fly to https://designsafeci-dev.tacc.utexas.edu/user-guide/
