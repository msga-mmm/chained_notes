FROM python:alpine

COPY pyproject.toml poetry.lock .

# Install Poetry and project dependencies
RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-root --no-dev

# Copy the current directory contents into the container
COPY . .

# Run app.py when the container launches
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
