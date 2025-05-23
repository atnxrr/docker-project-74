setup:
	docker compose run --rm app make setup
	
build:
	docker compose -f docker-compose.yml build app
	
push:
	docker compose -f docker-compose.yml push app

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker compose up

dev-hub:
	docker run -p 8080:8080 -e NODE_ENV=development atnxrr/docker-project-74 make dev
