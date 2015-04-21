FROM eaglechen/docker-spark:base
MAINTAINER Eagle Chen <chygr1234@gmail.com>

ENV SPARK_WORKER_PORT=8888

COPY worker.sh /worker.sh
ENTRYPOINT ["/worker.sh"]

EXPOSE 8081 8888
