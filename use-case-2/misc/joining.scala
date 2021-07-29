scala> rdd2.map( row => {(
     | row(0), 
     | row(18), 
     | rdd.filter( a => a(0).equals(row(0))  ).map( a => a(1) ) 
     | )})

