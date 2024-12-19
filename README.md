# DesignSafe User Guide

DesignSafe [MkDocs](https://mkdocs.readthedocs.io/) documentation with **customized** [ReadTheDocs](https://www.mkdocs.org/user-guide/choosing-your-theme/#readthedocs) theme.

## Contributing

[How to Contirbute to **Use Cases**](https://github.com/DesignSafe-CI/DS-User-Guide/blob/main/user-guide/docs/usecases/README.md)

How to Contribute **Other Changes**:

1. [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) this repository.\
    <sup>(unless you are a direct collaborator)</sup>
2. [Edit](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files) relevant files that need update.\
    <sup>([upload images](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository) as necessary)</sup>
4. [Commit](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/about-commits) your changes.
5. [Test](#testing) your changes.\
    <sup>(if comfortable using a command prompt)</sup>
6. [Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) a review.\
    <sup>(a.k.a. create a "Pull Request")</sup>
   
### Resources

* [Markdown syntax (extended)](https://www.markdownguide.org/extended-syntax/) via [MkDocs' Markdown support](https://www.mkdocs.org/user-guide/writing-your-docs/#writing-with-markdown)
    - plus some[^1] enabled [Python-Markdown extensions](https://python-markdown.github.io/extensions/)
    - plus some[^1] enabled [PyMdown exensions](https://facelessuser.github.io/pymdown-extensions/#extensions)

[^1]: Enabled extensions are tracked by https://github.com/TACC/TACC-Docs/blob/main/mkdocs.base.yml under `markdown_extensions:`.

## Testing

- [A. Via Python](#a-via-python)
- [B. Via Docker](#b-via-docker)

### A. Via Python

> [!IMPORTANT]
> This method has different theme than [live website](https://designsafe-ci.org/user-guide/) ([#42](https://github.com/DesignSafe-CI/DS-User-Guide/issues/42)) **and** bugs ([#66](https://github.com/DesignSafe-CI/DS-User-Guide/issues/66)).

0. Have [Python](https://www.python.org/) installed.\
    <sup>Known supported versions are [from 3.10 to 3.12](https://github.com/TACC/TACC-Docs/blob/v0.10.1/pyproject.toml#L9).</sup>
1. [Install Poetry](https://python-poetry.org/docs/#installation) to manage dependencies.\
    <sup>You should only need to do this once.</sup>
2. Navigate into `/user-guide/` within your clone of this repo.
3. Install/Update project dependencies:\
    <sup>You should only need to do this after new releases.</sup>
    ```shell
    poetry install
    ```
4. Serve the docs:
    ```shell
    poetry shell
    mkdocs serve
    ```
    <sup>After the `poetry shell` command, you should be in a Poetry-managed environment. Your prompt might be prefixed with the name of the environment.</sup>
5. Open the website _at the URL echoed by the program_ e.g.
    [http://127.0.0.1:8000/user-guide/](http://127.0.0.1:8000/user-guide/).

### B. Via Docker

0. Have Docker installed.\
    <sup>We recommend doing so via [Docker-Desktop](https://www.docker.com/products/docker-desktop).</sup>
1. Navigate into your clone of this repository.
2. Start the Docker container to serve the docs.

   Using `Make`:
   ```shell
    make build
    make start

    ```
   Or:
   ```shell
    docker compose build
    docker compose up

    ```
4. Open the website at the URL provided e.g.
    [http://localhost:8000/user-guide/](http://localhost:8000/user-guide/).


[^2]: To manually build or deploy, consult [our internal documentation](https://tacc-main.atlassian.net/wiki/x/aBhv).

## Automatic Builds

Automatic builds (not deploys) should occur on pushes to any branch.[^2]

## Automatic Deployment

Automatic deploys should occur after an automatic build on the `main` branch.[^2]

## Releases

All commits to `main` will trigger a docker build and push a new image to `designsafeci/ds-user-guide:latest`.

A Watchtower service monitors new pushes to this dockerhub repo and pull down new images on the fly to [https://designsafeci-dev.tacc.utexas.edu/user-guide/](https://designsafeci-dev.tacc.utexas.edu/user-guide/).
