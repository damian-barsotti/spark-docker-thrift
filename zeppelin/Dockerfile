FROM apache/zeppelin:0.10.1
LABEL maintainer="Damian Barsotti<damian@famaf.unc.edu.ar>"

ENV S_VERSION="3.3.1"

ENV SPARK_HOME="/opt/spark"

USER root

RUN echo "Download Spark binary" && \
    mkdir -p ${SPARK_HOME} && \
    wget -nv -O /tmp/spark-${S_VERSION}-bin-hadoop2.7.tgz https://archive.apache.org/dist/spark/spark-${S_VERSION}/spark-${S_VERSION}-bin-hadoop2.tgz && \
    tar --strip-components=1 -zxvf /tmp/spark-${S_VERSION}-bin-hadoop2.7.tgz -C ${SPARK_HOME} && \
    rm -f /tmp/spark-${S_VERSION}-bin-hadoop2.7.tgz && \
    chown -R root:root ${SPARK_HOME} && \
    chmod 775 ${SPARK_HOME}

COPY ./hive-site.xml ${SPARK_HOME}/conf/

COPY ./spark-defaults.conf ${SPARK_HOME}/conf/

COPY ./mysql-connector-j-8.0.31.jar ${SPARK_HOME}/jars
