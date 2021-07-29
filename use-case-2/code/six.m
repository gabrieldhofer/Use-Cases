scala> df.
     | where(col("venue") === "Eden Gardens").
     | where(col("season") === "2017").
     | agg(avg($"win_by_runs").as("average_win_by_runs")).
     | show()
+-------------------+
|average_win_by_runs|
+-------------------+
| 15.428571428571429|
+-------------------+


