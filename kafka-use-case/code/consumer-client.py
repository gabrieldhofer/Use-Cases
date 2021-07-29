from kafka import KafkaConsumer
consumer = KafkaConsumer('logs', bootstrap_servers=['localhost:9092'])

# Turn off auto-commit messages
KafkaConsumer(enable_auto_commit=False, auto_commit_interval_ms=False)

for message in consumer:
    print(message.value)
