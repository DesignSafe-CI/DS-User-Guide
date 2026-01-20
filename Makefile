# WARNING: Using `docker-compose` is deprecated
DOCKER_COMPOSE_CMD := $(shell if command -v docker-compose > /dev/null; then echo "docker-compose"; else echo "docker compose"; fi)


# To regenerate requirements.txt from poetry.lock
# CAVEAT: Using .PHONY to skip Make's dependency check
#         of poetry.lock until it is reliable or proven useless
.PHONY: requirements.txt
requirements.txt: poetry.lock
	pip install --user poetry-plugin-export \
	&& poetry export -f requirements.txt --output requirements.txt \
	&& pip uninstall --yes poetry-plugin-export


.PHONY: build
build:
	$(DOCKER_COMPOSE_CMD) -f ./docker-compose.yml build

.PHONY: start
start:
	$(DOCKER_COMPOSE_CMD) -f docker-compose.yml up

.PHONY: stop
stop:
	$(DOCKER_COMPOSE_CMD) -f docker-compose.yml down
