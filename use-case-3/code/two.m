scala> df.agg((sum(when(col("y") === lit("yes"),1).otherwise(0))/count("*")).
     | as("marketing_success_rate")).
     | show()
+----------------------+
|marketing_success_rate|
+----------------------+
|   0.11698480458295547|
+----------------------+


