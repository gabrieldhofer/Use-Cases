scala> rdd.
     | filter(a => a(10).equals("Sunrisers Hyderabad")).
     | groupBy(a => a(1)).
     | map{ case(k,v) => (k, v.size) }.
     | collect().
     | sortBy(_._1).
     | foreach(println)
(2013,10)
(2014,6)
(2015,7)
(2016,11)
(2017,8)
(2018,10)
(2019,6)

