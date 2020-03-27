###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP F1 COMPARISON

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

###WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F1"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=14);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS GIVE F1 SIGNIFICANT

###CHECK THE F2 "dad1, dad2 and dad3" LEVELS FOR F1 SIGNIFICANT - "TPI AND CONTROL" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###C5

dad1=with(data, subset(data,data$F2=="biological"))
kruskal.test(C5~F1, data = dad1)
comparison<-kruskal(dad1$C5,dad1$F1,group=TRUE);comparison

dad2=with(data, subset(data,data$F2=="physic"))
kruskal.test(C5~F1, data = dad2)
comparison<-kruskal(dad2$C5,dad2$F1,group=TRUE);comparison

dad3=with(data, subset(data, data$F2=="root"))
kruskal.test(C5~F1, data = dad3)
comparison<-kruskal(dad3$C5,dad3$F1,group=TRUE);comparison
