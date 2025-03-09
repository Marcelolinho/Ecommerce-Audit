FROM postgres:16

COPY db/erp.sql /docker-entrypoint-initdb.d/
COPY db/hub.sql /docker-entrypoint-initdb.d/