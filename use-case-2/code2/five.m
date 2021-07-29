scala> rdd.
     | groupBy(a => a(14)).
     | map{ case (k,v) => (k, v.size) }.
     | sortBy(-1 * _._2).
     | take(1).
     | foreach(println)
(Eden Gardens,77)


