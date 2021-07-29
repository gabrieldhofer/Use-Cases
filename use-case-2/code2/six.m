scala> rdd.
     | filter(a => a(14).equals("Eden Gardens")).
     | filter(a => a(1).equals("2017")).
     | map(_(11).toInt).
     | mean()
res0: Double = 15.428571428571429


