#!/bin/bash

# Инициализация репликационного набора
docker exec -it $PRIMARY_CONTAINER_NAME mongo --eval "rs.initiate()"

# Добавление второго сервера в репликационный набор
docker exec -it $PRIMARY_CONTAINER_NAME mongo --eval "rs.add('${SECONDARY_IP}:${MONGO_SECONDARY_PORT}')"
