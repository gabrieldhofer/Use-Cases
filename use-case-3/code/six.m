scala> df.
     | groupBy(col("marital")).
     | agg((sum(when(col("y") === lit("yes"),1).otherwise(0))/count("*")).
     | as("subscription_for_deposit_success_rate")).
     | show(10)
+--------+-------------------------------------+
| marital|subscription_for_deposit_success_rate|
+--------+-------------------------------------+
|divorced|                  0.11945458037257538|
| married|                  0.10123465863158668|
|  single|                   0.1494917904612979|
+--------+-------------------------------------+


