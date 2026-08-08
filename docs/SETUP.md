# 🚀 Руководство по установке и запуску

## Предварительные требования

- Docker (версия 20.10 или выше)
- Docker Compose (версия 1.29 или выше)
- Node.js 18.x (для локальной разработки без Docker)
- Git

## 📦 Установка

### 1. Клонирование репозитория

```bash
git clone https://github.com/qzstatick/barber.git
cd barber
```

### 2. Конфигурация переменных окружения

```bash
cp .env.example .env
```

Отредактируйте `.env` файл при необходимости:

```env
# Database
DB_USER=barber
DB_PASSWORD=your_secure_password
DB_NAME=barber_db

# Backend
NODE_ENV=development
JWT_SECRET=your_jwt_secret_key

# Frontend
REACT_APP_API_URL=http://localhost:3000
```

## 🐳 Запуск с Docker Compose

### Запуск всех сервисов

```bash
docker-compose up -d
```

### Проверка статуса сервисов

```bash
docker-compose ps
```

### Просмотр логов

```bash
# Все логи
docker-compose logs -f

# Логи конкретного сервиса
docker-compose logs -f backend
docker-compose logs -f frontend
docker-compose logs -f postgres
```

### Остановка сервисов

```bash
docker-compose down
```

### Остановка и удаление данных

```bash
docker-compose down -v
```

## 🖥️ Локальная разработка

### Backend (Node.js + NestJS)

```bash
cd backend

# Установка зависимостей
npm install

# Развитие
npm run start:dev

# Сборка
npm run build

# Production
npm run start:prod
```

### Frontend (React)

```bash
cd frontend

# Установка зависимостей
npm install

# Развитие
npm start

# Сборка
npm run build
```

## 📊 Доступ к сервисам

После запуска с Docker Compose:

- **Backend API**: http://localhost:3000
- **Frontend**: http://localhost:3001
- **PostgreSQL**: localhost:5432

## 🗄️ Миграции базы данных

```bash
# Создание миграции
docker-compose exec backend npm run typeorm migration:create

# Запуск миграций
docker-compose exec backend npm run typeorm migration:run

# Отката миграции
docker-compose exec backend npm run typeorm migration:revert
```

## 🧪 Тестирование

### Backend тесты

```bash
cd backend

# Unit тесты
npm run test

# E2E тесты
npm run test:e2e

# Coverage
npm run test:cov
```

### Frontend тесты

```bash
cd frontend

# Запуск тестов
npm test

# Coverage
npm run test:coverage
```

## 🔍 Валидация

### Проверка Dockerfile

```bash
docker-compose config --quiet
```

### Лinting

```bash
# Backend
cd backend && npm run lint

# Frontend
cd frontend && npm run lint
```

## 🐛 Устранение проблем

### Ошибка подключения к базе данных

```bash
# Проверьте, что контейнер postgres запущен
docker-compose ps postgres

# Просмотрите логи postgres
docker-compose logs postgres

# Перезапустите сервисы
docker-compose restart
```

### Ошибка порта занят

```bash
# Найдите процесс, использующий порт
lsof -i :3000

# Или измените порт в docker-compose.yml
```

### Переполнение кэша Docker

```bash
# Очистка неиспользуемых образов
docker image prune -a

# Очистка кэша сборки
docker builder prune
```

## 📚 Дополнительная информация

- Смотрите [PROJECT_STRUCTURE.md](./PROJECT_STRUCTURE.md) для информации о структуре проекта
- Смотрите [API.md](./API.md) для документации API (когда будет добавлена)
