# Spark cluster with thrift server implemented with docker compose

# General

A simple spark standalone virtual docker compose cluster with a running thrift server for testing purposses.
The cluster shares the spark warehouse space with the thrift server.
Tested with Tableau.

## Set file sharing permissions

```sh
chmod g+rwx shared-folder
sudo chown :root shared-folder
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

You should see the thrift server as an application.

## Test the cluster

```sh
docker compose run -it spark-cmd /opt/spark/bin/spark-submit --master spark://spark-master:7077 /shared-folder/load_data_write_to_server.py
```

```sh
docker compose run -it spark-cmd /shared-folder/connect-thrift-server.sh
```

## Show ip of thrift server

```sh
./show-thrift-server-ip.sh
```
