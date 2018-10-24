*** kafka2psql
Tool written in Golang to read JSON messages from a topic and write them to a PostgreSQL database.

Usage example: 
./kafka2psql --table-topic ENTITY --pq "postgres://ngb:ngb@127.0.0.1:5432/ngb?sslmode=disable" --pq-tblname entity


*** entityProducer.sh
Script created to randomly read entities from a PostgreSQL database and write to a Kafka topic.
./entityProducer.sh
