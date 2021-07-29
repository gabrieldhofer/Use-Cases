scala> val id_dismissed = rdd2.map( f => { (f(0), if(f.size < 19) "-" else f(18) ) } )

scala> val id_season = rdd.map( f => { (f(0), f(1)) })

scala> val joinedRdd = id_dismissed.join(id_season)

scala> val restruct = joinedRdd.map{ case(a,(b,c)) => (c,b,a) }.collect()

scala> import scala.collection.mutable.Map

scala> var dismiss= Map[String, Int]()

scala> var totals = Map[String, Int]()

scala> for((a,b,c) <- restruct){
     |  if(!dismiss.contains(a)){ dismiss(a) = 0 }
     |  if(b != "-"){ dismiss(a) += 1 }
     |  if(!totals.contains(a)){ totals(a) = 0 }
     |  totals(a) += 1
     | }

scala> for((k,v) <- totals){
     |   println("Season:  "+k+"\tDismissal Rate:  "+dismiss(k).toFloat / totals(k).toFloat)
     | }
Season:  2016	Dismissal Rate:  0.047247447
Season:  2010	Dismissal Rate:  0.050006896
Season:  2019	Dismissal Rate:  0.04725014
Season:  2013	Dismissal Rate:  0.050173298
Season:  2009	Dismissal Rate:  0.0513009
Season:  2015	Dismissal Rate:  0.050615296
Season:  2018	Dismissal Rate:  0.050314907
Season:  2012	Dismissal Rate:  0.048291776
Season:  2011	Dismissal Rate:  0.047786985
Season:  2014	Dismissal Rate:  0.04713287
Season:  2008	Dismissal Rate:  0.05115279
Season:  2017	Dismissal Rate:  0.051291298


