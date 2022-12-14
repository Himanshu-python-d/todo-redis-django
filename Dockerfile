# Development Dockerfile for Django todo

FROM python:3.8-slim

# Set the default directory where CMD will execute
WORKDIR /todo

# Run Django's runserver by default
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]

# Install dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    musl-dev

# Install dependencies from requirements file
COPY requirements.txt .
RUN pip install -r requirements.txt