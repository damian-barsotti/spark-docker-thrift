ARG MYSQL_VERSION=8.0.31
FROM mysql:${MYSQL_VERSION}

MAINTAINER Damian Barsotti <damian.barsotti@unc.edu.ar>

ENV MYSQL_DATABASE=metastore

COPY hive-schema-2.3.0.mysql.sql /docker-entrypoint-initdb.d

COPY hive-txn-schema-2.3.0.mysql.sql ./
