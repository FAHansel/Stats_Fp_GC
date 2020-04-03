###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP COMPARISON: NON-NORMAL DATA "NN"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

###WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F1"DATA (BLUE)

data2 = read.xlsx('R_FILE.xlsx',sheetIndex=14);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS GIVES F1 SIGNIFICANT

###CHECK THE F2 "dad_L1, dad_L2, dad_L3, dad_L4 and dad_L5" LEVELS FOR F1 SIGNIFICANT - "EC22 and EC40" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

#VARIABLE C109

dad_F1=with(data,data)
kruskal.test(C109~F1, data)
comparison<-kruskal(dad_F1$C109,dad_F1$F1,group=TRUE);comparison

###IN EACH F2 LEVEL

dad_L1=with(data, subset(data,data$F2=="144"))
kruskal.test(C109~F1, data = dad_L1) 
comparison<-kruskal(dad_L1$C109,dad_L1$F1,group=TRUE);comparison

dad_L2=with(data, subset(data,data$F2=="206"))
kruskal.test(C109~F1, data = dad_L2) 
comparison<-kruskal(dad_L2$C109,dad_L2$F1,group=TRUE);comparison

dad_L3=with(data, subset(data, data$F2=="380"))
kruskal.test(C109~F1, data = dad_L3)
comparison<-kruskal(dad_L3$C109,dad_L3$F1,group=TRUE);comparison

dad_L4=with(data, subset(data, data$F2=="761"))
kruskal.test(C109~F1, data = dad_L4)
comparison<-kruskal(dad_L4$C109,dad_L4$F1,group=TRUE);comparison

dad_L5=with(data, subset(data, data$F2=="1142"))
kruskal.test(C109~F1, data = dad_L5)
comparison<-kruskal(dad_L5$C109,dad_L5$F1,group=TRUE);comparison

