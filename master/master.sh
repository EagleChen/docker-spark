#!/usr/bin/env bash

# this can prevent master from using an unreachable hostname
export SPARK_MASTER_IP=$(hostname -i)

$SPARK_HOME/sbin/start-master.sh

# prevent docker container from exit
tail -F $SPARK_HOME/logs/*

