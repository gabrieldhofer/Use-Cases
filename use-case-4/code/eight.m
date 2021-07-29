scala> df.groupBy(substring(col("Date"),0,4).as("Year")).agg(max(col("High"))).orderBy(col("Year")).show()
+----+---------+
|Year|max(High)|
+----+---------+
|2012|77.599998|
|2013|81.370003|
|2014|88.089996|
|2015|90.970001|
|2016|75.190002|
+----+---------+


