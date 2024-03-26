#!/bin/bash

curl -o ./user-guide/mkdocs.base.yml https://cdn.jsdelivr.net/gh/DesignSafe-CI/DS-User-Guide@e0a3bd0/user-guide/mkdocs.base.yml
curl -o ./poetry.lock https://cdn.jsdelivr.net/gh/DesignSafe-CI/DS-User-Guide@26257aa/poetry.lock
curl -o ./pyproject.toml https://cdn.jsdelivr.net/gh/DesignSafe-CI/DS-User-Guide@26257aa/pyproject.toml
