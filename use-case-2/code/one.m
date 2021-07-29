scala> df.
     | groupBy("city").
     | count().
     | filter(col("city") === "Hyderabad").
     | show()
+---------+-----+
|     city|count|
+---------+-----+
|Hyderabad|   64|
+---------+-----+


