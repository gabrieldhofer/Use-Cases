from kafka import KafkaProducer
from time import sleep
import json
from datetime import datetime
import random 

producer = KafkaProducer(bootstrap_servers=['localhost:9092'])
producer.send('logs', b'Client application using Kafka Producer API')

error_messages = [ 
    '500 Internal Server Error',
    '501 Not Implemented',
    '502 Bad Gateway',
    '503 Service Unavailable',
    '504 Gateway Timeout',
    '505 HTTP Version Not Supported',
    '506 Variant Also Negotiates (RFC 2295)',
    '507 Insufficient Storage (WebDAV; RFC 4918)',
    '508 Loop Detected (WebDAV; RFC 5842)',
    '510 Not Extended (RFC 2774)',
    '511 Network Authentication Required (RFC 6585)',
]

for i in range(50):
    message = " ERROR : {} ".format(str(  random.choice(error_messages)  ))
    producer.send('logs', json.dumps(message).encode('utf-8'))
    sleep(0.5)
    print("logs message ",i)
