$ bin/kafka-topics.sh \
  --zookeeper localhost:2181 \
  --create --topic logs \
  --partitions 3 \
  --replication-factor 3

