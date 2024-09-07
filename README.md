<h1 align="center">CHAINED NOTES</h1>

A server for chained notes.

## BUILD PROCESS

### Dependencies

- [docker compose](https://docs.docker.com/compose/install/)

### Getting started

1. Clone or download this repository.

   ```sh
   git clone https://github.com/msga-mmm/chained_notes.git
   cd chained-notes-web
   ```

2. Start all the docker compose services:

   ```sh
   # start the services
   docker compose up

   # start the services in the background
   docker compose up --detach
   ```

3. Run the migrations to create all the required tables.

   ```sh
   docker compose exec application python manage.py migrate
   ```

4. After all the services have started and the migrations have been applied the following links will be accessible.

   - Django admin: http://localhost:8000/admin/
   - Django rest framework interface: http://localhost:8000/api/
   - Download yaml OpenAPI schema: http://localhost:8000/doc/schema/
   - Swagger UI: http://localhost:8000/doc/schema/swagger-ui/
   - Redoc UI: http://localhost:8000/doc/schema/redoc/

5. To see the logs of the containers the following command be used:

   ```sh
   # see all the service logs
   docker compose logs

   # see all the service logs and keep watching for new logs
   docker compose logs --follow

   # see the logs of a specific service
   docker compose logs application

   # see the logs of a specific service and keep watching for new logs
   docker compose logs application --follow
   ```
