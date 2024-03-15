#!/usr/bin/env sh

export MYSQL_PASSWORD=""
export MONGO_PASSWORD=""
export REDIS_PASSWORD=""
export RABBITMQ_PASSWORD=""
export MARIADB_PASSWORD=""
export POSTGRES_PASSWORD=""
export SQLSERVER_PASSWORD=""
export FIREBIRD_PASSWORD=""
export MEILISEARCH_PASSWORD=""

# Mongo -p 27017:27017
docker run -d \
    --name "mongo" \
    --restart unless-stopped \
    -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=$MONGO_PASSWORD \
    -v /tbf/mongo/config:/data/configdb \
    -v /tbf/mongo/data:/data/db \
    mongo:4.4.19-focal

# Redis -p 6379:6379
docker run -d \
    --name "redis" \
    --restart unless-stopped \
    p 6379:6379 \
    -v /tbf/redis:/data \
    redis:7.0.10-alpine

# RabbitMQ -p 5672:5672 -p 15672:15672
docker run -d \
    --name "rabbitmq" \
    --restart unless-stopped \
    -p 5672:5672 \
    -p 15672:15672 \
    -e RABBITMQ_DEFAULT_USER=root \
    -e RABBITMQ_DEFAULT_PASS=$RABBITMQ_PASSWORD \
    -v /tbf/rabbitmq:/var/lib/rabbitmq \
    rabbitmq:3.11.11-management

# MariaDB -p 3306:3306
docker run -d \
    --name "mariadb" \
    --restart unless-stopped \
    -p 3306:3306 \
    -e MARIADB_ROOT_PASSWORD=$MARIADB_PASSWORD \
    -v /tbf/mariadb/etc:/etc/mysql/conf.d \
    -v /tbf/mariadb/lib:/var/lib/mysql \
    -v /tbf/mariadb/log:/var/log/mysql \
    mariadb:10.9.3

# Postgres -p 5432:5432
docker run -d \
    --name "postgres" \
    --restart unless-stopped \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    -v /tbf/postgres:/var/lib/postgresql/data \
    postgres:latest

# SQLServer -p 1433:1433
docker run -d \
    --name "sqlserver" \
    --restart unless-stopped \
    -p 1433:1433 \
    -e ACCEPT_EULA="Y" \
    -e MSSQL_SA_PASSWORD=$SQLSERVER_PASSWORD \
    mcr.microsoft.com/mssql/server:2022-latest

# Firebird -p 3050:3050
docker run -d \
    --name "firebird" \
    --restart unless-stopped \
    -p 3050:3050 \
    -e FIREBIRD_DATABASE=firebird \
    -e ISC_PASSWORD=$FIREBIRD_PASSWORD \
    -v /tbf/firebird:/firebird \
    jacobalberty/firebird

# MeiliSearch -p 7700:7700
docker run -d \
    --name "meilisearch" \
    --restart unless-stopped \
    -p 7700:7700 \
    -e MEILI_MASTER_KEY=$MEILISEARCH_PASSWORD \
    -v /tbf/meilisearch:/meili_data \
    getmeili/meilisearch:v1.0
