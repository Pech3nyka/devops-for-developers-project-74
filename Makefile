tests:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up --abort-on-container-exit

dev-setup:
	docker-compose run --rm app make setup


test-image:
	docker run -p 8080:8080 -e NODE_ENV=development pech3nyka/devops-for-developers-project-74 make dev


dev:
	docker-compose up

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app