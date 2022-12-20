#!/bin/bash

cat initial-tables.sql hive-schema-2.3.0.mysql.sql | mysql -uroot -p"$MYSQL_ROOT_PASSWORD"
