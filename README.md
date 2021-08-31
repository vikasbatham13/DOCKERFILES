# DOCKERFILES
DockerFiles for Development.

rename any file in the format docker-compose.yml and run docker-compose up -d to start the container

##### Starting Kafka

## starting server
docker-compose up -d

## verify if both servers are uP

nc -z localhost 22181 // zookeeper
nc -z localhost 29092 // kafka

## check logs

docker-compose logs kafka | grep -i started
