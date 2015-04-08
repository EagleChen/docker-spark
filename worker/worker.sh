#!/usr/bin/env bash

MASTER_HOST=${1:-'master'}
MASTER_IP=`ping -q -c 1 -t 1 ${MASTER_HOST} | grep PING | sed -e "s/).*//" | sed -e "s/.*(//"`
MASTER_PORT=${2:-'7077'}

echo  "${MASTER_IP}:${MASTER_PORT}"

spark-class org.apache.spark.deploy.worker.Worker spark://${MASTER_IP}:${MASTER_PORT}

tail -F $SPARK_HOME/work/*
