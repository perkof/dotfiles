#!/usr/bin/env bash

sudo rabbitmq-server &
sudo dynamodb-local &
sudo redis-server &
java -jar ~/bin/elasticmq-server-0.8.8.jar &
