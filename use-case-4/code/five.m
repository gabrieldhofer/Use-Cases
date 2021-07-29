scala> df.filter(col("Close") < lit(60.0)).count()
res10: Long = 81

