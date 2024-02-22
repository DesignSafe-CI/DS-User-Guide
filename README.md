# DesignSafe User Guide

DesignSafe ReadTheDocs Documentation with [MkDocs](https://mkdocs.readthedocs.io/).

## Contributing

> [!NOTE]
> For a detailed walkthrough of how to contribute to [Use Cases](https://www.designsafe-ci.org/user-guide/usecases/), see [its upcoming README](https://github.com/DesignSafe-CI/DS-User-Guide/blob/feat/DES-2668-migrate-isolated-use-cases-to-here/user-guide/docs/usecases/README.md).

1. [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) this repository.\
    <sup>(unless you are a direct collaborator)</sup>
2. [Edit](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files) relevant files that need update.\
    <sup>([upload images](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository) as necessary)</sup>
4. [Commit](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/about-commits) your changes.
5. [Create a "Pull Request".](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)

## Local Development

### Using Local Environment

> More control. More caveats.

If you have not already, install Python [Poetry](https://python-poetry.org/): `curl -sSL https://install.python-poetry.org | python3 -`

```shell
cd ds-user-guide/user-guide
poetry install
mkdocs serve
```

### Using Shared Environment

> Less control. Less caveats.

If you have not already, follow [TACC/TACC-Docs "Prequisites for Running the Docs"](https://github.com/TACC/TACC-Docs#prequisites-for-running-the-docs).

```shell
cd ds-user-guide
make build
make start
```

## Releases

All commits to `main` will trigger a docker build and push a new image to `designsafeci/ds-user-guide:latest`.

A Watchtower service will monitor new pushes to this dockerhub repo and pull down new images on the fly to https://designsafeci-dev.tacc.utexas.edu/user-guide/
