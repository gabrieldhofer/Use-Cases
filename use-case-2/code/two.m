scala> df.
     | where(col("winner") === "Sunrisers Hyderabad").
     | where(col("city") === "Hyderabad").
     | groupBy("winner").
     | count().
     | show()
+-------------------+-----+
|             winner|count|
+-------------------+-----+
|Sunrisers Hyderabad|   30|
+-------------------+-----+


