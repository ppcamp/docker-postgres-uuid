# Docker Image with Postgres and UUID Support
The official [Postgres Docker image](https://registry.hub.docker.com/_/postgres/) [(Github)](https://github.com/docker-library/postgres) extended with the uuid-ossp extension of the postgresql-contrib package.

_*Note*: This image it's just a shortcut for all process in background._

The uuid extension is installed and enabled.

* Build
    ```bash
    docker build . --no-cache --tag postgres_uuid
    ```
* Execute
    ```bash
    docker run -e POSTGRES_PASSWORD=some_psswd -p 5432:5432 postgres_uuid:latest
    # or
    docker run -e POSTGRES_PASSWORD=some_psswd -e POSTGRES_USER=someuser -p 5432:5432 postgres_uuid:latest
    ```