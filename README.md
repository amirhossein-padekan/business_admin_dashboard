# Business Admin Dashboard

A professional, client-ready Django-based business administration dashboard designed for small to medium businesses that need a clean internal management panel.

## 🎯 Project Overview

This is a **production-ready** business admin dashboard that replaces Django's default admin interface with a custom, polished solution. Built with enterprise-grade code quality, security best practices, and modern development patterns.

### Business Use Case

Perfect for businesses that need:
- Custom user management with role-based access control
- Customer relationship management (CRM)
- Order lifecycle management with state transitions
- Business metrics and KPI dashboards
- Export capabilities for reporting
- RESTful API for future mobile/web clients

## ✨ Features

### 🔐 Authentication & Authorization
- Email-based authentication with JWT support
- Role-based access control (Admin, Manager, Staff)
- Session management and audit trails
- Password security with validation

### 📊 Custom Admin Dashboard
- Overview metrics and KPIs
- User management with role-based permissions
- Customer management with search and filtering
- Order management with lifecycle states
- CSV export functionality
- Advanced search and pagination

### 🚀 RESTful API
- Versioned API endpoints (`/api/v1/`)
- JWT authentication
- OpenAPI/Swagger documentation
- Role-based API permissions
- Advanced filtering and search

### 💼 Business Logic
- Order lifecycle management (Pending → Active → Completed → Archived)
- Soft delete for data recovery
- Audit fields (created_at, updated_at, created_by)
- Status transition validation

### 🔒 Security Features
- Password hashing with best practices
- Rate limiting on authentication endpoints
- Security headers (CSP, XSS protection)
- Role-based permission checks
- Input validation and sanitization

### 🐳 DevOps & Deployment
- Docker and Docker Compose support
- Separate development/production configurations
- Environment-based settings management
- Nginx configuration for production
- SSL/TLS ready

### 🧪 Testing
- Comprehensive test suite with pytest
- Unit tests for models and views
- Integration tests for workflows
- API endpoint testing
- Coverage reporting

## 🛠 Technology Stack

### Backend
- **Django 4.2+** - Web framework
- **Django REST Framework** - API development
- **PostgreSQL** - Database
- **Redis** - Caching (optional)
- **Python 3.11+**

### Security & Authentication
- **JWT** - Token-based authentication
- **django-ratelimit** - Rate limiting
- **python-decouple** - Environment management

### Development Tools
- **Docker** - Containerization
- **pytest** - Testing framework
- **black** - Code formatting
- **flake8** - Linting

## 🏗 Architecture

### Project Structure
```
business_admin_dashboard/
├── src/
│   ├── accounts/          # User management and authentication
│   ├── api/              # REST API endpoints
│   ├── core/             # Shared utilities and base classes
│   ├── customers/        # Customer management
│   ├── dashboard/        # Main dashboard views
│   ├── orders/           # Order lifecycle management
│   └── config/           # Django settings and configuration
├── tests/                # Test suite
├── templates/            # Django templates
├── static/               # Static files (CSS, JS, images)
├── media/                # User uploaded files
├── logs/                 # Application logs
├── requirements.txt      # Python dependencies
├── Dockerfile           # Container configuration
├── docker-compose.yml   # Development environment
└── README.md           # This file
```

### Key Design Patterns

1. **Service Layer Pattern** - Business logic separation
2. **Repository Pattern** - Data access abstraction
3. **Soft Delete** - Data recovery capability
4. **Audit Trail** - Complete change tracking
5. **Role-Based Access Control** - Permission management

## 🚀 Quick Start

### Prerequisites
- Python 3.11+
- PostgreSQL 14+
- Redis 6+ (optional)
- Docker & Docker Compose (optional)

### Local Development Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd business_admin_dashboard
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Configure environment**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

5. **Set up database**
   ```bash
   python manage.py migrate
   python manage.py createsuperuser
   ```

6. **Collect static files**
   ```bash
   python manage.py collectstatic --noinput
   ```

7. **Run development server**
   ```bash
   python manage.py runserver
   ```

### Docker Setup

1. **Using Docker Compose (Development)**
   ```bash
   docker-compose up -d
   ```

2. **Using Docker Compose (Production)**
   ```bash
   docker-compose -f docker-compose.prod.yml up -d
   ```

3. **Create superuser in container**
   ```bash
   docker-compose exec web python manage.py createsuperuser
   ```

## 📖 API Documentation

### Authentication

Obtain JWT token:
```bash
POST /api/v1/auth/token/
{
    "email": "user@example.com",
    "password": "password"
}
```

Use token in subsequent requests:
```bash
Authorization: Bearer <access_token>
```

### Main Endpoints

- **Users**: `/api/v1/users/`
- **Customers**: `/api/v1/customers/`
- **Orders**: `/api/v1/orders/`
- **Dashboard Stats**: `/api/v1/dashboard/`

### API Features

- **Filtering**: `?status=active&priority=high`
- **Search**: `?search=john`
- **Ordering**: `?ordering=-created_at`
- **Pagination**: `?page=2&page_size=50`

## 🔧 Configuration

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `SECRET_KEY` | Django secret key | Required |
| `DEBUG` | Debug mode | `False` |
| `DB_NAME` | Database name | `business_dashboard` |
| `DB_USER` | Database user | `postgres` |
| `DB_PASSWORD` | Database password | Required |
| `REDIS_URL` | Redis connection URL | Optional |
| `EMAIL_HOST` | SMTP server | `smtp.gmail.com` |

### Settings Files

- `config/settings/base.py` - Base configuration
- `config/settings/development.py` - Development settings
- `config/settings/production.py` - Production settings

## 🧪 Testing

### Run Tests
```bash
# Run all tests
pytest

# Run with coverage
pytest --cov=src

# Run specific test file
pytest tests/accounts/test_models.py

# Run integration tests only
pytest -m integration
```

### Test Structure
- **Unit Tests** - Individual component testing
- **Integration Tests** - Complete workflow testing
- **API Tests** - Endpoint testing
- **Coverage** - Minimum 80% coverage requirement

## 🚀 Deployment

### Production Checklist

1. **Security**
   - [ ] Set strong SECRET_KEY
   - [ ] Configure HTTPS/SSL
   - [ ] Set DEBUG=False
   - [ ] Configure allowed hosts
   - [ ] Set up rate limiting

2. **Database**
   - [ ] Use PostgreSQL
   - [ ] Configure database backups
   - [ ] Set up connection pooling

3. **Static Files**
   - [ ] Configure CDN (optional)
   - [ ] Set up static file serving
   - [ ] Enable compression

4. **Monitoring**
   - [ ] Set up logging
   - [ ] Configure error tracking (Sentry)
   - [ ] Set up health checks

### Deployment Options

1. **Traditional Server**
   - Ubuntu/Debian with systemd
   - PostgreSQL + Nginx + Gunicorn

2. **Cloud Platforms**
   - AWS ECS/Fargate
   - Google Cloud Run
   - Azure Container Instances

3. **Platform-as-a-Service**
   - Heroku
   - PythonAnywhere
   - DigitalOcean App Platform

## 📊 Monitoring & Logging

### Application Logs
- Located in `/app/logs/`
- Structured logging with rotation
- Separate logs per app component

### Health Checks
- `/health/` endpoint for load balancers
- Database connectivity checks
- Service dependency checks

### Metrics
- User activity tracking
- Order lifecycle metrics
- Performance monitoring
- Error rate tracking

## 🔒 Security Considerations

### Authentication
- Strong password requirements
- JWT token rotation
- Session timeout management
- Failed login attempt tracking

### Authorization
- Role-based access control
- Permission inheritance
- Resource-level permissions
- API endpoint protection

### Data Protection
- Soft delete for recovery
- Audit trail for changes
- Input validation
- SQL injection prevention

### Infrastructure
- HTTPS enforcement
- Security headers
- Rate limiting
- Container security

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Ensure all tests pass
6. Submit a pull request

### Code Style
- Follow PEP 8 guidelines
- Use black for formatting
- Run flake8 for linting
- Write descriptive commit messages

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

### Documentation
- API documentation: `/api/schema/` (when running)
- Django admin: `/admin/` (when running)
- Code documentation: Inline comments and docstrings

### Getting Help
- Check the troubleshooting section
- Review existing issues
- Create a new issue with details
- Contact development team

## 🙏 Acknowledgments

- Django community for the excellent framework
- Django REST Framework team for API tools
- PostgreSQL team for the robust database
- All contributors and testers

---

**Built with ❤️ for businesses that need professional internal tools.**

*This is a production-ready system designed for real business use. The code quality, security practices, and architectural decisions reflect enterprise-grade development standards.*