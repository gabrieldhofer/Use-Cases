scala> df.
     | select("season").
     | where(col("player_of_match") === "Yuvraj Singh").
     | show()
+------+
|season|
+------+
|  2017|
|  2009|
|  2009|
|  2011|
|  2014|
+------+


