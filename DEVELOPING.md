# How to Develop

Manage dependencies via [TACC/TACC-Docs](https://github.com/TACC/TACC-Docs). Serve docs via [MkDocs](https://www.mkdocs.org/). Test via [Docker](https://www.docker.com/). Deploys are [automated](./PUBLISHING.md).

## Theming

Customize MkDocs with [CSS, JS, ES, plugins, extensions](https://github.com/TACC/TACC-Docs/blob/v0.15.0/mkdocs.base.yml) and [theme overrides](https://github.com/TACC/TACC-Docs/tree/v0.15.0/themes/tacc-readthedocs) **from [TACC/TACC-Docs](https://github.com/TACC/TACC-Docs)** both via [script](./bin/tacc-setup.sh) and [via Docker](./Dockerfile).

To theme another MkDocs project to look [like this](https://docs.tacc.utexas.edu/), please contact [@wesleyboar](https://www.github.com/wesleyboar).

> [!NOTE]
> We will eventually [use MkDocs Material](https://github.com/TACC/TACC-Docs/issues/53) and [apply TACC customization properly](https://github.com/TACC/TACC-Docs/issues/76).
