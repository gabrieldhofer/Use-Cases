$ bin/kafka-topics.sh --zookeeper localhost:2181 --describe --topic logs
Topic: logs	TopicId: Y7fJeVWCRzWNGLWHApE_bw	PartitionCount: 3	ReplicationFactor: 3	Configs: 
	Topic: logs	Partition: 0	Leader: 3	Replicas: 3,2,1	Isr: 3,2,1
	Topic: logs	Partition: 1	Leader: 1	Replicas: 1,3,2	Isr: 1,3,2
	Topic: logs	Partition: 2	Leader: 2	Replicas: 2,1,3	Isr: 2,1,3

