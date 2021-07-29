scala> rdd.
     | map(x => (x(14), if(x(11) != "win_by_runs") x(11).toInt else 0)).
     | reduceByKey(_ + _).
     | sortBy(-1 * _._2).
     | take(1).
     | foreach(println)
(M Chinnaswamy Stadium,1310)


