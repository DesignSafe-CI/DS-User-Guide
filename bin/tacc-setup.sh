#!/bin/bash

# To provide files via a CDN from a specific repo at a specific commit-ish
# https://github.com/DesignSafe-CI/DS-User-Guide/pull/14
BASE_URL="https://cdn.jsdelivr.net/gh/DesignSafe-CI/DS-User-Guide@624d01be"

# To avoid the error:
# > ERROR - Config value 'theme': The path set in custom_dir
# >         ('.../user-guide/themes/tacc-readthedocs') does not exist.
mkdir -p ./user-guide/themes/tacc-readthedocs

# To clone TACC files (so authors can preview without Docker)
# TODO: Make TACC/TACC-Docs public, so we can load from TACC/TACC-Docs via CDN
curl -o ./user-guide/mkdocs.base.yml ${BASE_URL}/user-guide/mkdocs.base.yml
curl -o ./poetry.lock ${BASE_URL}/poetry.lock
curl -o ./pyproject.toml ${BASE_URL}/pyproject.toml
