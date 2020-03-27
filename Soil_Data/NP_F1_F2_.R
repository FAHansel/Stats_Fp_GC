###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP INTERACRION COMPARISON

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F1_F2"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=13);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS GIVE F2 AND F1 SIGNIFICANT


###CHECK THE F2 "dad1, dad2 and dad3" LEVELS FOR F1 SIGNIFICANT - "TPI AND CONTROL" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###CHECK THE F1 "dad4 and dad5" LEVELS FOR F2 SIGNIFICANT - "ROOT, PHYSICS AND biological" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###C51

dad1=with(data, subset(data,data$F2=="biological"))
kruskal.test(C51~F1, data = dad1) 
comparison<-kruskal(dad1$C51,dad1$F1,group=TRUE);comparison

dad2=with(data, subset(data,data$F2=="physic"))
kruskal.test(C51~F1, data = dad2) 
comparison<-kruskal(dad2$C51,dad2$F1,group=TRUE);comparison

dad3=with(data, subset(data, data$F2=="root"))
kruskal.test(C51~F1, data = dad3)
comparison<-kruskal(dad3$C51,dad3$F1,group=TRUE);comparison

dad4=with(data, subset(data,data$F1=="tpi"))
kruskal.test(C51~F2, data = dad4)
comparison<-kruskal(dad4$C51,dad4$F2,group=TRUE);comparison

dad5=with(data, subset(data,data$F1=="control"))
kruskal.test(C51~F2, data = dad5)
comparison<-kruskal(dad5$C51,dad5$F2,group=TRUE);comparison

