FROM python:alpine

WORKDIR /app

COPY pyproject.toml poetry.lock .

# Install Poetry and project dependencies
RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-root --only main

# Copy the current directory contents into the container
COPY . .
