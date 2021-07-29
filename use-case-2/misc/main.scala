
val rddFromFile = sc.textFile("/home/gabriel/Data/matches.csv")

val rdd = rddFromFile.map(f => { f.split(",") })

val rddFromFile2 = sc.textFile("/home/gabriel/Data/deliveries.csv")

val rdd2 = rddFromFile2.map(f => {f.split(",")})




val id_dismissed = rdd2.map( f => { (f(0), if(f.size < 19) "-" else f(18) ) } )

val id_season = rdd.map( f => { (f(0), f(1)) })

val joinedRdd = id_dismissed.join(id_season)

val restruct = joinedRdd.map{ case(a,(b,c)) => (c,b,a) }.collect()

import scala.collection.mutable.Map

var dismiss= Map[String, Int]()
var totals = Map[String, Int]()
for((a,b,c) <- restruct){
  if(!dismiss.contains(a)){ dismiss(a) = 0 } 
  if(b != "-"){ dismiss(a) += 1 }
  if(!totals.contains(a)){ totals(a) = 0 }
  totals(a) += 1
}

for((k,v) <- totals){
  println("Season:  "+k+"\tDismissal Rate:  "+dismiss(k).toFloat / totals(k).toFloat)
}











