#!/bin/bash

DIR="$SPARK_HOME/bin"

read -r -d '' QUERY << EOM
SHOW DATABASES;
SHOW TABLES;
SELECT * FROM airports LIMIT 10;
EOM

exec "$DIR"/beeline  -u jdbc:hive2://spark-thrift-server:10000 -n root -e "$QUERY"
