scala> spark.sql("SELECT AVG(balance) AS average_balance, percentile_approx(balance, 0.5) AS median_balance FROM df").show()
+------------------+--------------+
|   average_balance|median_balance|
+------------------+--------------+
|1362.2720576850766|         448.0|
+------------------+--------------+


