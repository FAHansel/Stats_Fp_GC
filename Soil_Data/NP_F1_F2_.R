###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP INTERACRION COMPARISON

require(stats);require(xlsx);require(multcomp);require(lattice);require(effects);require(hnp);library(agricolae)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F1_F2"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=13);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS F2 AND F1 SIGNIFICANT


###CHECK THE F2 "dad_L1, dad_L2 and dad_L3" LEVELS FOR F1 SIGNIFICANT - "L1 AND L2" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###CHECK THE F1 "dad_L1 and dad_L2" LEVELS FOR F2 SIGNIFICANT - "L1, L2 AND L3" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###C51

dad_L1=with(data, subset(data, data$F2=="L1"))
kruskal.test(C51~F1, data = dad_L1)
comparison<-kruskal(dad_L1$C51,dad_L1$F1,group=TRUE);comparison

dad_L2=with(data, subset(data,data$F2=="L2"))
kruskal.test(C51~F1, data = dad_L2)
comparison<-kruskal(dad_L2$C51,dad_L2$F1,group=TRUE);comparison

dad_L3=with(data, subset(data,data$F2=="L3"))
kruskal.test(C51~F1, data = dad_L3)
comparison<-kruskal(dad_L3$C51,dad_L3$F1,group=TRUE);comparison

dad_L1=with(data, subset(data,data$F1=="L1"))
kruskal.test(C51~F2, data = dad_L1)
comparison<-kruskal(dad_L1$C51,dad_L1$F2,group=TRUE);comparison

dad_L2=with(data, subset(data,data$F1=="L2"))
kruskal.test(C51~F2, data = dad_L2)
comparison<-kruskal(dad_L2$C51,dad_L2$F2,group=TRUE);comparison

