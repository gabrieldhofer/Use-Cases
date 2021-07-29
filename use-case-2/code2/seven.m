// Select match id and player_dismissed columns from the RDD
scala> val id_dismissed = rdd2.map( f => { (f(0), if(f.size < 19) "-" else f(18) ) } )

// Select match id and the season columns from the RDD
scala> val id_season = rdd.map( f => { (f(0), f(1)) })

// Join the two lists of tuples on the match id 
scala> val joinedRdd = id_dismissed.join(id_season)

// Restructure the data - put the season as the first element in the row
scala> val restruct = joinedRdd.map{ case(a,(b,c)) => (c,b,a) }.collect()

// We will use a two mutable maps: dismiss and totals
scala> import scala.collection.mutable.Map

// This maps season year to number of players dismissed in that season
scala> var dismiss= Map[String, Int]()

// This maps season year to number of deliveries
scala> var totals = Map[String, Int]()

// Count number of players dismissed per season and 
// also count the total number of deliveries per season
scala> for((a,b,c) <- restruct){
     |  if(!dismiss.contains(a)){ dismiss(a) = 0 }
     |  if(b != "-"){ dismiss(a) += 1 }
     |  if(!totals.contains(a)){ totals(a) = 0 }
     |  totals(a) += 1
     | }

// print the results 
scala> for((k,v) <- totals){
     |   println("Season:  "+k+"\tDismissal Rate:  "+dismiss(k).toFloat / totals(k).toFloat)
     | }





