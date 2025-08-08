#!/bin/bash

# What version of TACC-Docs to use
TACC_VER=v0.15.1
# Where to get files from TACC
BASE_URL="https://cdn.jsdelivr.net/gh/TACC/TACC-Docs@${TACC_VER}"
# Get the directory where the script resides
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
# Create a temporary directory for the TACC docs
TACC_DIR="${ROOT_DIR}/_temp-tacc-docs-for-ds"

# So authors can preview with TACC features but without Docker
curl -o "${ROOT_DIR}/user-guide/mkdocs.base.yml" ${BASE_URL}/mkdocs.base.yml
curl -o "${ROOT_DIR}/user-guide/poetry.lock" ${BASE_URL}/poetry.lock
curl -o "${ROOT_DIR}/user-guide/pyproject.toml" ${BASE_URL}/pyproject.toml

# So authors can preview with TACC design but without Docker
mkdir -p "${ROOT_DIR}/user-guide/themes/tacc-readthedocs"
git clone -q --depth 1 --branch ${TACC_VER} https://github.com/TACC/TACC-Docs.git ${TACC_DIR}
cp -r ${TACC_DIR}/themes/tacc-readthedocs "${ROOT_DIR}/user-guide/themes/"
cp -r ${TACC_DIR}/docs/css/core "${ROOT_DIR}/user-guide/docs/css/"
cp -r ${TACC_DIR}/docs/js/core "${ROOT_DIR}/user-guide/docs/js/"
rm -rf ${TACC_DIR}
