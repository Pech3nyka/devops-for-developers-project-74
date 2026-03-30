### Hexlet tests and linter status:
[![Actions Status](https://github.com/Pech3nyka/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Pech3nyka/devops-for-developers-project-74/actions)
[![Docker CI](https://github.com/Pech3nyka/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg?branch=main)](https://github.com/Pech3nyka/devops-for-developers-project-74/actions/workflows/push.yml)

# Проект: Упаковка в Docker Compose

Блог создан с помощью Fastify с Docker и CI/CD

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

- `app/` - исходник  приложения
- `services/caddy/` - конфиг Caddy reverse proxy
- `Dockerfile` - для разработки
- `Dockerfile.production` - для production образа
- `docker-compose.yml` - конфиг для тестов
- `docker-compose.override.yml` - override конфига для разработки

## Установка и запуск


### Установка зависимостей

```bash
make dev-setup
```

### Запуск приложения с Caddy
```bash
make dev
```

> Приложение будет доступно:
> - http://localhost
> - https://localhost

### Запуск тестов в Docker

```bash
make tests
```