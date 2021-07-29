scala> df.
     | groupBy(col("age"),col("marital")).
     | agg((sum(when(col("y") === lit("yes"),1).otherwise(0))/count("*")).
     | as("subscription_for_deposit_success_rate")).
     | show()
+---+--------+-------------------------------------+
|age| marital|subscription_for_deposit_success_rate|
+---+--------+-------------------------------------+
| 73|divorced|                   0.6666666666666666|
| 59|divorced|                  0.10596026490066225|
| 21|  single|                  0.28378378378378377|
| 53|divorced|                  0.11042944785276074|
| 69|divorced|                                0.375|
| 18|  single|                   0.5833333333333334|
| 29| married|                  0.07127429805615551|
| 67|  single|                   0.3333333333333333|
| 27|divorced|                   0.1111111111111111|
| 58| married|                  0.09246575342465753|
| 46|divorced|                  0.12953367875647667|
| 80| married|                   0.3793103448275862|
| 70|  single|                                  0.0|
| 54|divorced|                  0.13559322033898305|
| 66| married|                  0.41509433962264153|
| 68|  single|                                  0.5|
| 56| married|                  0.08687943262411348|
| 70| married|                  0.22641509433962265|
| 72|  single|                                  0.0|
| 33|  single|                  0.13002680965147453|
+---+--------+-------------------------------------+
only showing top 20 rows

