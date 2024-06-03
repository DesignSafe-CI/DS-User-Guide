#!/bin/bash

# To avoid the error:
# > ERROR - Config value 'theme': The path set in custom_dir
# >         ('.../user-guide/themes/tacc-readthedocs') does not exist.
mkdir -p ./user-guide/themes/tacc-readthedocs

# To clone TACC files (so authors can preview without Docker)
# TODO: Make TACC/TACC-Docs public, so we can load from TACC/TACC-Docs via CDN
curl -o ./user-guide/mkdocs.base.yml https://cdn.jsdelivr.net/gh/DesignSafe-CI/DS-User-Guide@tacc/tacc-docs/user-guide/mkdocs.base.yml
curl -o ./poetry.lock https://cdn.jsdelivr.net/gh/DesignSafe-CI/DS-User-Guide@tacc/tacc-docs/poetry.lock
curl -o ./pyproject.toml https://cdn.jsdelivr.net/gh/DesignSafe-CI/DS-User-Guide@tacc/tacc-docs/pyproject.toml