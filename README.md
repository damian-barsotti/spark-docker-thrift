# Spark cluster with thrift server implemented with docker compose

# General

A simple spark standalone virtual docker compose cluster with a running thrift server for testing purposses.
The cluster shares the spark warehouse space with the thrift server.
Tested with Tableau.

## Set file sharing permissions

```sh
chmod g+rwx files
sudo chown :root files
```

## Build the images

```sh
docker compose build
```

## Run the docker-compose

The final step to create your test cluster will be to run the compose file:

```sh
docker compose up -d
```

## Show Spark UI

http://localhost:8080/

## Test the cluster

```sh
docker compose exec -it spark-master /bin/bash
/files/run-test.sh
/files/connect-thrift-server.sh
exit
```

## Show ip of thrift server

```sh
./show-thrift-server-ip.sh
```
