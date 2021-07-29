scala> df2.
     | join(df, df2("match_id") === df("id"), "left").
     | groupBy("season").
     | agg((sum(when($"player_dismissed".isNull,0).otherwise(1))/count("*")).
     | as("player_dismissed : fraction null")).
     | show()
+------+--------------------------------+
|season|player_dismissed : fraction null|
+------+--------------------------------+
|  2016|             0.04724744608399546|
|  2012|              0.0482917768897394|
|  2019|               0.047250139586823|
|  2017|            0.051291299956716205|
|  2014|            0.047132867132867136|
|  2013|             0.05017329592341971|
|  2009|            0.051300896663236804|
|  2018|            0.050314905528341496|
|  2011|             0.04778698642214777|
|  2008|             0.05115279116316999|
|  2015|             0.05061529446234984|
|  2010|             0.05000689750310388|
+------+--------------------------------+


