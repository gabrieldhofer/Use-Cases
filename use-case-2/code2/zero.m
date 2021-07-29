scala> val rddFromFile = sc.textFile("/home/gabriel/Data/matches.csv")

scala> val rdd = rddFromFile.map(f=>{ f.split(",") })

scala> val rddFromFile2 = sc.textFile("/home/gabriel/Data/deliveries.csv")

scala> val rdd2 = rddFromFile2.map(f => {f.split(",")})


