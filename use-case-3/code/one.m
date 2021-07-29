scala> val df = spark.read.format("csv").option("header", "true").load("/home/gabriel/Data/bank-full.csv")

scala> df.createOrReplaceTempView("df")

