### Hexlet tests and linter status:
[![Actions Status](https://github.com/Pech3nyka/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Pech3nyka/devops-for-developers-project-74/actions)
[![Docker CI](https://github.com/Pech3nyka/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg?branch=main)](https://github.com/Pech3nyka/devops-for-developers-project-74/actions/workflows/push.yml)

# Проект: Упаковка в Docker Compose

Проект демонстрирует CI/CD пайплайн с Docker, GitHub Actions, reverse proxy (Caddy) и PostgreSQL.

## Ссылка на Docker Hub

Образ приложения: [pech3nyka/devops-for-developers-project-74](https://hub.docker.com/repository/docker/pech3nyka/devops-for-developers-project-74)

## Требования

- Docker
- Docker Compose
- Make

## Использованные технологии

- **Fastify** - веб-фреймворк
- **PostgreSQL** - БД
- **Caddy** - reverse proxy с HTTPS
- **Docker** - контейнеризация проекта
- **GitHub Actions** - CI/CD для работы workflows

## Структура проекта

- `app/` - исходник приложения
- `services/caddy/` - конфиг Caddy reverse proxy
- `Dockerfile` - для разработки
- `Dockerfile.production` - для production образа
- `docker-compose.yml` - конфиг для тестов
- `docker-compose.override.yml` - override конфига для разработки

```bash
# Установка зависимостей
make setup

# Запуск тестов
make test

# Запуск всех сервисов (app + caddy + postgres)
make docker-dev
```

После запуска приложение доступно по адресу: https://localhost