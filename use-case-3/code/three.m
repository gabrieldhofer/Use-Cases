scala> spark.sql("SELECT MAX(age) AS max_age, MIN(age) AS min_age, AVG(age) AS avg_age, percentile_approx(age,0.5) AS median_age FROM df").show()
+-------+-------+-----------------+----------+
|max_age|min_age|          avg_age|median_age|
+-------+-------+-----------------+----------+
|     95|     18|40.93621021432837|      39.0|
+-------+-------+-----------------+----------+


