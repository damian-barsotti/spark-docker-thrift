ARG SPARK_VERSION=3.3.1
FROM apache/spark-py:${SPARK_VERSION}

MAINTAINER Damian Barsotti <damian.barsotti@unc.edu.ar>

ARG spark_uid=185

USER root

RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y iputils-ping &&\
    rm -rf /var/cache/apt/*

USER ${spark_uid}

COPY ./hive-site.xml ${SPARK_HOME}/conf/

COPY ./spark-defaults.conf ${SPARK_HOME}/conf/

COPY ./mysql-connector-j-8.0.31.jar ${SPARK_HOME}/jars

ENV WORKDIR ${SPARK_HOME}/work-dir

WORKDIR ${WORKDIR}

ENV SPARK_LOG_DIR ${WORKDIR}/logs
ENV SPARK_NO_DAEMONIZE true
