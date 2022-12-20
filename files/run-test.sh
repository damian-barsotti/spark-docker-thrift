#!/bin/bash

rm -rf /files/spark-warehose/airports
 
$SPARK_HOME/bin/spark-submit --master spark://spark-master:7077 /files/load_data_write_to_server.py
