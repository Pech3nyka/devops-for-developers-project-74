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

# Docker commands
docker-build:
docker-compose build

docker-setup:
docker-compose run --rm app make setup

docker-test:
docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

docker-dev:
docker-compose up

docker-down:
docker-compose down

ci:
docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
