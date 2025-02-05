#!/bin/bash

# To provide files via a CDN from TACC at a specific commit
BASE_URL="https://cdn.jsdelivr.net/gh/TACC/TACC-Docs@v0.15.1"

# To avoid the error:
# > ERROR - Config value 'theme': The path set in custom_dir
# >         ('.../user-guide/themes/tacc-readthedocs') does not exist.
mkdir -p ./user-guide/themes/tacc-readthedocs

# To clone TACC files (so authors can preview without Docker)
# TODO: Make TACC/TACC-Docs public, so we can load from TACC/TACC-Docs via CDN
curl -o ./user-guide/mkdocs.base.yml ${BASE_URL}/mkdocs.base.yml
curl -o ./user-guide/poetry.lock ${BASE_URL}/poetry.lock
curl -o ./user-guide/pyproject.toml ${BASE_URL}/pyproject.toml
