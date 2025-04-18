## How to Test

- [A. Via Python](#a-via-python)
- [B. Via Docker](#b-via-docker)

### A. Via Python

#### Prerequisites

- Have [Python](https://www.python.org/) installed.\
    <sup>Known supported versions are [from 3.10 to 3.12](https://github.com/TACC/TACC-Docs/blob/v0.10.1/pyproject.toml#L9).</sup>
- Have [Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer) installed to manage dependencies.\
    <sup>You should only need to do this once.</sup>\
    <sup>Future versions of DesignSafe User Guide will **not** require this.</sup>

#### Steps

0. Clone this repository onto your machine.
1. Navigate into your clone of this repo.
2. Run `bin/tacc-setup.sh` to reproduce files from TACC Docs.
3. Install/Update project dependencies:\
    <sup>You should only need to do this after new releases.</sup>
    ```shell
    poetry install --sync
    ```
4. Activate project dependencies:\
    ```shell
    poetry shell
    ```
    <sup>After the `poetry shell` command, you should be in a Poetry-managed environment. Your prompt might be prefixed with the name of the environment.</sup>
5. Serve the docs:\
    ```shell
    mkdocs serve
    ```
6. Open the website _at the URL echoed by the program_ e.g.
    [http://127.0.0.1:8000/](http://127.0.0.1:8000/).

### B. Via Docker

#### Prerequisites

- Have [Docker](https://www.docker.com/) installed.\
    <sup>We recommend doing so via [Docker-Desktop](https://www.docker.com/products/docker-desktop).</sup>

#### Steps

0. Clone this repository onto your machine.
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
3. Open the website at the URL provided e.g.
    [http://localhost:8000/](http://localhost:8000/).
