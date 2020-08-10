FROM postgres:latest

LABEL maintainer="Nicolas Bös"
LABEL description="Fix the uuid error in default docker"
# Update
RUN apt-get update >> /dev/null
# Install
RUN apt-get install -y postgresql-contrib >> /dev/null
# Fix default database (When start, will fix)
COPY createExtension.sh /docker-entrypoint-initdb.d/