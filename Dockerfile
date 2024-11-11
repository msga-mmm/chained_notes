FROM python:alpine

RUN addgroup -S nonroot \
    && adduser -S nonroot -G nonroot

USER nonroot

WORKDIR /home/nonroot/app

COPY --chown=nonroot:nonroot pyproject.toml poetry.lock .

# Install Poetry and project dependencies
RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-root --only main

# Copy the current directory contents into the container
COPY --chown=nonroot:nonroot . .
