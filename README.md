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

###################################################################################
##### Starting Kafka random

## starting server
docker-compose up -d

## verify if both servers are uP

nc -z localhost 2181 // zookeeper
nc -z localhost 9092 // kafka

## Attach to the Kafka Broker running in Docker

docker exec -it kafka bash

## Unset the JMX port in the Kafka Docker container 

unset JXM_PORT

## otherwise, you will run into issues when executing the CLI like:

Error: JMX connector server communication error: service:jmx:rmi://13529ed4a4a9:9999
sun.management.AgentConfigurationError: java.rmi.server.ExportException: Port already in use: 9999; nested exception is:
java.net.BindException: Address already in use (Bind failed)
at sun.management.jmxremote.ConnectorBootstrap.exportMBeanServer(ConnectorBootstrap.java:800)
at sun.management.jmxremote.ConnectorBootstrap.startRemoteConnectorServer(ConnectorBootstrap.java:468)
at sun.management.Agent.startAgent(Agent.java:262)
at sun.management.Agent.startAgent(Agent.java:452)

## Stop Kafka & Zookeeper using Docker Compose

docker-compose down -v
