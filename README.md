# Barber Project

[ТЗ](https://github.com/qzstatick/barber/issues/6#issue-4944803189)

A full-stack application with NestJS backend, React frontend, and PostgreSQL database.

## 🏗️ Project Structure

```
barber/
├── backend/          # NestJS application
├── frontend/         # React application
├── docs/            # Project documentation
├── docker-compose.yml # Multi-service orchestration
└── .dockerignore     # Docker build exclusions
```

## 🐳 Docker Setup

### Prerequisites
- Docker and Docker Compose installed

### Environment Variables

Create a `.env` file in the root directory:

```env
# Database
DB_USER=postgres
DB_PASSWORD=postgres
DB_NAME=barber_db
DB_PORT=5432

# Backend
NODE_ENV=development
API_PORT=3000

# Frontend
FRONTEND_PORT=3001
REACT_APP_API_URL=http://localhost:3000
```

### Running the Stack

```bash
# Build and start all services
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down

# Stop and remove volumes
docker-compose down -v
```

### Accessing Services

- **Backend API**: http://localhost:3000
- **Frontend**: http://localhost:3001
- **PostgreSQL**: localhost:5432

## 🔄 GitHub Actions Workflows

### Docker Build & Push (`docker-build.yml`)
Automatically builds and pushes Docker images to GitHub Container Registry (GHCR) when code is pushed to main or develop branches.

**Triggers:**
- Push to `main` or `develop`
- Pull requests to `main` or `develop`

**Jobs:**
- Validates docker-compose.yml
- Builds backend image
- Builds frontend image
- Tests compose stack on PRs
- Publishes to GHCR

### Linting & Code Quality (`lint.yml`)
Runs code quality checks on backend and frontend code.

**Triggers:**
- Push to `main` or `develop`
- Pull requests to `main` or `develop`

**Jobs:**
- Backend linting (ESLint, TypeScript)
- Frontend linting (ESLint, TypeScript)
- Dockerfile validation (Hadolint)
- Secret scanning (TruffleHog)
- Coverage reports to Codecov

## 🏗️ Architecture

### Backend (NestJS)
- Node.js 18 Alpine
- Multi-stage build for optimized production image
- Non-root user for security
- Health checks enabled
- Proper signal handling with dumb-init

### Frontend (React)
- Node.js 18 Alpine build stage
- Nginx Alpine production server
- Optimized configuration with:
  - Gzip compression
  - Static file caching (1 year)
  - SPA fallback routing
  - Security headers
  - Health check endpoint

### Database (PostgreSQL)
- PostgreSQL 15 Alpine
- Persistent volume for data
- Health checks
- Environment variable configuration

## 📝 Configuration Files

### docker-compose.yml
Orchestrates all services with proper dependency management and health checks.

### Dockerfiles
- **backend/Dockerfile**: Multi-stage NestJS build
- **frontend/Dockerfile**: Multi-stage React + Nginx build

### Nginx Configuration
- **frontend/nginx.conf**: Production-ready Nginx config with security and caching

## 🚀 Getting Started

1. Clone the repository
2. Create `.env` file with required variables
3. Run `docker-compose up -d`
4. Services will be available at configured ports

## 📚 Documentation

Additional documentation can be found in the `docs/` directory.

---

**Repository**: normalnyjaleksandr/barber
