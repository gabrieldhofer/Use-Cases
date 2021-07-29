scala> val df = spark.read.option("header",true).csv("/home/gabriel/Downloads/matches.csv")

scala> val df2 = spark.read.option("header",true).csv("/home/gabriel/Downloads/deliveries.csv")

