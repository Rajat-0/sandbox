#!/bin/bash

database="ngb_bigrepo"

# kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic ENTITY
# kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic ENTITY


psql -A -t -P pager=off -c "select id || '###' || data  from entity tablesample system (0.01);" $database | kafka-console-producer.sh --broker-list localhost:9092 --property "parse.key=true" --property "key.separator=###" --topic ENTITY
# "tablesample system (0.001)" means we randomly retrieve 0.001% of the rows from table entity


psql -A -t -P pager=off -c "select id || '###' || data  from entity order by id limit 3;" $database | kafka-console-producer.sh --broker-list localhost:9092 --property "parse.key=true" --property "key.separator=###" --topic ENTITY


