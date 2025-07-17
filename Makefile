.PHONY: prod dev

prod:
	@COMPOSE_FILE=docker/app/docker-compose.yml \
	COMPOSE_ENV_FILES=.env.production \
	docker compose $(cmd)

dev:
	@COMPOSE_FILE=docker/app/docker-compose.yml:docker/db/docker-compose.yml \
	COMPOSE_ENV_FILES=.env.development \
	docker compose $(cmd)

