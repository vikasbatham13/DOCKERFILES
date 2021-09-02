##### Starting Kafka random

>docker-compose up -d

>nc -z localhost 2181 // zookeeper

> nc -z localhost 9092 // kafka
 

>unset JXM_PORT

important for kafka running in docker

>docker exec -it kafka bash
> 
>
with we can find image number
> >docker ps  

>docker inspect 8dcc00fcad65 | grep "IPAddress"

            "SecondaryIPAddresses": null,
            "IPAddress": "",
                    "IPAddress": "172.19.0.2",


create topic
>kafka-topics --zookeeper 172.19.0.2:2181 --topic first_topic --create --partitions 3 --replication-factor 1

list topic

> kafka-topics --zookeeper 172.19.0.2:2181 --list

> kafka-topics --zookeeper 172.19.0.2:2181 --topic first_topic --describe

> kafka-topics --zookeeper 172.19.0.2:2181 --topic second_topic --create --partitions 6 --replication-factor 1

> kafka-topics --zookeeper 172.19.0.2:2181 --topic second_topic --delete 


> kafka-console-producer --broker-list 172.19.0.3:9092 --topic first_topic

> kafka-console-producer --broker-list 172.19.0.3:9092 --topic first_topic --producer-property acks=all
// broker list and bootstrap server are same

> kafka-console-consumer --bootstrap-server 172.19.0.3:9092 --topic first_topic

> kafka-console-consumer --bootstrap-server 172.19.0.3:9092 --topic first_topic --from-beginning

> kafka-console-consumer --bootstrap-server 172.19.0.3:9092 --topic first_topic --group first-group

> kafka-console-consumer --bootstrap-server 172.19.0.3:9092 --topic first_topic --group second-group --from-beginning (from begining wont work)

>  kafka-consumer-groups --bootstrap-server 172.19.0.3:9092 --list>
 
> kafka-consumer-groups --bootstrap-server 172.19.0.3:9092 --describe --group first-group 

> kafka-consumer-groups --bootstrap-server 172.19.0.3:9092  --group first-group --reset-offsets --to-earliest --execute --topic first_topic

> kafka-consumer-groups --bootstrap-server 172.19.0.3:9092  --group first-group --reset-offsets --shift-by 2 --execute --topic first_topic

> kafka-console-producer --broker-list 172.19.0.3:9092  --topic first_topic --property parse.key=true --property key.separator=,
> key,value
> another key,another value


> kafka-console-consumer --bootstrap-server 172.19.0.3:9092 --topic first_topic --from-beginning --property print.key=true --property key.separator=,
