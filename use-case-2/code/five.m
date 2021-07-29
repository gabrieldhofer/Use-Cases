scala> df.
     | groupBy("venue").
     | count().
     | orderBy(desc("count")).
     | show(1)
+------------+-----+
|       venue|count|
+------------+-----+
|Eden Gardens|   77|
+------------+-----+
only showing top 1 row


