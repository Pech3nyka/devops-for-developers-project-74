setup:
	npm install

migrate:
	npx sequelize db:migrate

start:
	npm start

dev:
	npm run dev

test:
	NODE_ENV=test npm test

build:
	npm run build

docker-build:
	docker compose build

docker-setup:
	docker compose run --rm app make setup

docker-test:
	docker compose -f docker-compose.yml run -e NODE_ENV=test --rm app make test

docker-dev:
	docker compose up

docker-down:
	docker compose down

ci:
	docker compose -f docker-compose.test.yml up --abort-on-container-exit --exit-code-from app
