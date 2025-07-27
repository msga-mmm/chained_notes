<h1 align="center">CHAINED NOTES</h1>

A server for chained notes.

## BUILD PROCESS

### Dependencies

- [docker compose](https://docs.docker.com/compose/install/)
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [mkcert](https://github.com/FiloSottile/mkcert#installation)

### Getting started

1. Clone or download this repository.

   ```sh
   git clone https://github.com/msga-mmm/chained_notes.git
   cd chained-notes-web
   ```

2. Create local SSl certificate to be able to run the application in https locally for development and production parity https://12factor.net/dev-prod-parity.

   ```sh
   # change directory where the certificate and key will be created
   cd nginx/ssl

   # create SSL certificate and key for `localhost`
   mkcert -install -key-file dev.pem -cert-file cert.pem localhost
   ```

3. Start all the docker compose services:

   ```sh
   # start the services
   docker compose up

   # start the services in the background
   docker compose up --detach
   ```

4. Run the migrations to create all the required tables.

   ```sh
   docker compose exec application python manage.py migrate
   ```

5. After all the services have started and the migrations have been applied the following links will be accessible.
   - Django admin: https://localhost/api/admin/
   - Django rest framework interface: https://localhost/api/
   - Download yaml OpenAPI schema: https://localhost/api/doc/schema/
   - Swagger UI: https://localhost/api/doc/schema/swagger-ui/
   - Redoc UI: https://localhost/api/doc/schema/redoc/

6. To see the logs of the containers the following command be used:

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
