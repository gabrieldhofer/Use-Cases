scala> df.agg(max(col("Volume")), min(col("Volume"))).show()
+-----------+-----------+
|max(Volume)|min(Volume)|
+-----------+-----------+
|    9994400|   10010500|
+-----------+-----------+


