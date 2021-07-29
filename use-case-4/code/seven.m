scala> val highAvg = df.select(mean(col("High"))).first().getDouble(0)

scala> val volumeAvg = df.select(mean(col("Volume"))).first().getDouble(0)

scala> val numerator = df.agg(sum((col("High") - highAvg) * (col("Volume") - volumeAvg))).first().getDouble(0)
numerator: Double = -1.3013592106342264E10

scala> val denominator = math.sqrt(df.agg( sum((col("High") - highAvg) * (col("High") - highAvg)) * sum((col("Volume") - volumeAvg) * (col("Volume") - volumeAvg))).first().getDouble(0))
denominator: Double = 3.845253639556948E10

scala> val r = numerator / denominator
r: Double = -0.33843260617371645



