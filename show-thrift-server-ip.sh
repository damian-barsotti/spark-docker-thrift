#!/bin/bash

docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' spark-thrift-server