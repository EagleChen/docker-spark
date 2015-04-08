FROM dockerfile/java:oracle-java8
MAINTAINER Eagle Chen <chygr1234@gmail.com>

ENV SPARK_VERSION 1.3.0
ENV SPARK_HOME /usr/local/spark
ENV PATH $SPARK_HOME/bin:$PATH
ENV SPARK_FILE_NAME spark-${SPARK_VERSION}-bin-hadoop2.4

ADD http://d3kbcqa49mib13.cloudfront.net/${SPARK_FILE_NAME}.tgz /tmp/
RUN cd /usr/local && tar xzf /tmp/${SPARK_FILE_NAME}.tgz && mv ${SPARK_FILE_NAME} spark && rm /tmp/${SPARK_FILE_NAME}.tgz
