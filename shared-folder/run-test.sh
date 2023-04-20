#!/bin/bash

rm -rf /shared-folder/spark-warehouse/airports
 
$SPARK_HOME/bin/spark-submit --master spark://spark-master:7077 /shared-folder/load_data_write_to_server.py
