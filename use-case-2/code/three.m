scala> df.
     | where(col("winner") === "Sunrisers Hyderabad").
     | groupBy("season").
     | count().
     | show()
+------+-----+
|season|count|
+------+-----+
|  2016|   11|
|  2019|    6|
|  2017|    8|
|  2014|    6|
|  2013|   10|
|  2018|   10|
|  2015|    7|
+------+-----+


