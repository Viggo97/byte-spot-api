FROM postgres:18
ENV POSTGRES_DB=byte-spot-db
COPY entrypoint.sql /docker-entrypoint-initdb.d/
COPY ./tables /docker-entrypoint-initdb.d/tables
COPY ./data /docker-entrypoint-initdb.d/data
