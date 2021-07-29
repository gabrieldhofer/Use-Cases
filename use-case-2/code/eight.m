scala> df.
     | groupBy("venue").
     | agg(sum("win_by_runs").as("win_by_runs_by_venue")).
     | orderBy(desc("win_by_runs_by_venue")).
     | show(1)
+--------------------+--------------------+
|               venue|win_by_runs_by_venue|
+--------------------+--------------------+
|M Chinnaswamy Sta...|              1310.0|
+--------------------+--------------------+
only showing top 1 row


