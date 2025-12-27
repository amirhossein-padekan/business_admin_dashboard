# Business Admin Dashboard - Production Dockerfile
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/app/src

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    postgresql-client \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user
RUN groupadd -r appuser && useradd -r -g appuser appuser

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ ./src/
COPY manage.py .

# Create necessary directories
RUN mkdir -p /app/staticfiles /app/media /app/logs && \
    chown -R appuser:appuser /app

# Set permissions
RUN chmod +x manage.py

# Switch to non-root user
USER appuser

# Collect static files
RUN python manage.py collectstatic --noinput --settings=config.settings.production

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8000/health/ || exit 1

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "config.wsgi:application", "--workers", "3", "--timeout", "120"]