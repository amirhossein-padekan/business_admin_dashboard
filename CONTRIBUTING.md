# Contributing to Business Admin Dashboard

Thank you for your interest in contributing to the Business Admin Dashboard! This document provides guidelines and instructions for contributing to the project.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
- [Development Guidelines](#development-guidelines)
- [Testing Guidelines](#testing-guidelines)
- [Commit Message Guidelines](#commit-message-guidelines)
- [Pull Request Process](#pull-request-process)

## 🤝 Code of Conduct

This project follows a Code of Conduct that all contributors are expected to adhere to. Please read and follow these guidelines to ensure a positive and inclusive community.

- Be respectful and constructive in all interactions
- Welcome newcomers and help them get started
- Focus on what's best for the community
- Show empathy towards other community members

## 🚀 Getting Started

### Prerequisites

- Python 3.11+
- PostgreSQL 14+
- Git
- Docker (optional)

### Development Setup

1. **Fork the repository**
   ```bash
   # Click the "Fork" button on GitHub, then clone your fork
   git clone https://github.com/your-username/business-admin-dashboard.git
   cd business-admin-dashboard
   ```

2. **Set up the development environment**
   ```bash
   # Run the setup script
   ./scripts/setup.sh
   
   # Or manually:
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

## 💡 How to Contribute

### Reporting Issues

Before creating an issue, please:

1. Check if the issue already exists
2. Use the latest version to verify the issue still exists
3. Collect information about the bug or feature request

When creating an issue, please include:

- **Bug Reports**: Steps to reproduce, expected behavior, actual behavior, environment details
- **Feature Requests**: Use case, proposed solution, alternatives considered
- **Security Issues**: Email the maintainers directly instead of creating a public issue

### Contributing Code

1. **Find an issue** to work on or create a new one
2. **Fork the repository** and create a feature branch
3. **Make your changes** following the development guidelines
4. **Write tests** for your changes
5. **Run the test suite** to ensure everything passes
6. **Submit a pull request** with a clear description

## 🛠 Development Guidelines

### Code Style

This project follows PEP 8 guidelines with some additional rules:

- **Line Length**: 100 characters maximum
- **Quotes**: Use double quotes for strings
- **Imports**: Group into stdlib, third-party, and local imports
- **Formatting**: Use `black` for automatic formatting

```bash
# Format your code
black src/

# Check for style issues
flake8 src/
```

### Code Quality

- Write clear, readable code
- Use meaningful variable and function names
- Add docstrings to all functions and classes
- Keep functions small and focused
- Follow the existing code patterns

### Security Guidelines

- Never commit secrets or sensitive data
- Validate all inputs
- Use parameterized queries
- Follow Django security best practices
- Keep dependencies updated

### Database Guidelines

- Use migrations for all schema changes
- Write data migrations when needed
- Optimize queries for performance
- Use indexes appropriately
- Consider soft delete for important data

## 🧪 Testing Guidelines

### Test Structure

- **Unit Tests**: Test individual components in isolation
- **Integration Tests**: Test component interactions
- **API Tests**: Test API endpoints and responses

### Writing Tests

```python
# Example test structure
import pytest
from django.test import TestCase

@pytest.mark.django_db
class TestFeature:
    def test_feature_behavior(self):
        # Arrange
        setup_data = self.create_test_data()
        
        # Act
        result = perform_action(setup_data)
        
        # Assert
        assert result == expected_result
```

### Running Tests

```bash
# Run all tests
pytest

# Run with coverage
pytest --cov=src

# Run specific test file
pytest tests/accounts/test_models.py

# Run with verbose output
pytest -v
```

### Test Coverage

- Maintain minimum 80% code coverage
- Test both success and failure scenarios
- Test edge cases and boundary conditions
- Test permission and security scenarios

## 📝 Commit Message Guidelines

Follow the conventional commit format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, no logic change)
- **refactor**: Code refactoring
- **perf**: Performance improvements
- **test**: Adding or updating tests
- **chore**: Build process or auxiliary tool changes
- **security**: Security-related changes

### Examples

```
feat(accounts): add user profile management

- Add profile view and edit functionality
- Update user model with additional fields
- Add profile forms and validation

Closes #123
```

```
fix(orders): resolve status transition bug

- Fix validation logic for order status changes
- Add proper error handling
- Update tests to cover edge cases

Fixes #456
```

## 🔄 Pull Request Process

### Before Submitting

1. **Test your changes**
   ```bash
   pytest
   pytest --cov=src
   ```

2. **Format your code**
   ```bash
   black src/
   ```

3. **Check for style issues**
   ```bash
   flake8 src/
   ```

4. **Update documentation** if needed

### PR Template

When creating a pull request, please include:

- **Description**: What changes were made and why
- **Type**: Bug fix, feature, refactoring, etc.
- **Testing**: How were the changes tested
- **Screenshots**: If applicable, for UI changes
- **Breaking Changes**: Any breaking changes
- **Related Issues**: Link to related issues

### Review Process

1. **Automated Checks**: CI/CD pipeline will run tests and checks
2. **Code Review**: Maintainers will review the code
3. **Feedback**: Address any feedback or suggestions
4. **Merge**: Once approved, changes will be merged

### PR Guidelines

- Keep PRs focused and atomic
- Include tests for new functionality
- Update documentation as needed
- Respond to feedback promptly
- Squash commits if requested

## 🏷️ Issue Labels

We use labels to categorize issues:

- **bug**: Something isn't working
- **enhancement**: New feature or request
- **documentation**: Improvements or additions to documentation
- **help-wanted**: Extra attention is needed
- **good-first-issue**: Good for newcomers
- **priority-high**: High priority issues
- **security**: Security-related issues

## 🛡️ Security

If you discover a security vulnerability, please email the maintainers directly rather than creating a public issue. We take security seriously and appreciate responsible disclosure.

## 📞 Getting Help

- **Documentation**: Check the README and inline documentation
- **Issues**: Search existing issues for similar problems
- **Discussions**: Use GitHub Discussions for questions
- **Email**: Contact maintainers for security issues

## 🎉 Recognition

We appreciate all contributions, whether they're:

- Code contributions
- Documentation improvements
- Bug reports
- Feature suggestions
- Testing and feedback

Contributors are recognized in the project README and release notes.

## 📜 License

By contributing to this project, you agree that your contributions will be licensed under the same license as the project (MIT License).

---

Thank you for contributing to the Business Admin Dashboard! Your efforts help make this project better for everyone. 🚀