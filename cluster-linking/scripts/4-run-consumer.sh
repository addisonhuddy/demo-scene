#!/bin/bash

echo -e "\n\n==> Consume from east cluster, west-trades. The consumer will timeout after 15 seconds of not receiving any messages. \n"

docker-compose exec broker-east kafka-console-consumer \
    --bootstrap-server broker-east:19092 \
    --topic west-trades \
    --from-beginning \
    --timeout-ms 15000