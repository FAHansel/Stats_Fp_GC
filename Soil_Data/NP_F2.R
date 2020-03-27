###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP F2 COMPARISON

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F2"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=15);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS GIVE F2 SIGNIFICANT

###CHECK THE F1 "dad4 and dad5" LEVELS FOR F2 SIGNIFICANT - "ROOT, PHYSICS AND biological" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###C15

dad4=with(data, subset(data,data$F1=="tpi"))
kruskal.test(C15~F2, data = dad4)
comparison<-kruskal(dad4$C15,dad4$F2,group=TRUE);comparison

dad5=with(data, subset(data,data$F1=="control"))
kruskal.test(C15~F2, data = dad5)
comparison<-kruskal(dad5$C15,dad5$F2,group=TRUE);comparison


