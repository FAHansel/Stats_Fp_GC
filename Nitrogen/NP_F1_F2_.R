###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP COMPARISON: NON-NORMAL DATA "NN"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_INT"DATA (BLUE)

data3 = read.xlsx('R_FILE.xlsx',sheetIndex=13);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS GIVE F2 AND F1 SIGNIFICANT

###CHECK THE F2 "dad_L1, dad_L2, dad_L3, dad_L4 and dad_L5" LEVELS FOR F1 SIGNIFICANT - "EC22 and EC40" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###CHECK THE F1 "dad_L1 and dad_L2" LEVELS FOR F2 SIGNIFICANT - "NITROGEN DOSES" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT


#VARIABLE C28

dad_L1=with(data, subset(data,data$F2=="144"))
kruskal.test(C28~F1, data = dad_L1) 
comparison<-kruskal(dad_L1$C28,dad_L1$F1,group=TRUE);comparison

dad_L2=with(data, subset(data,data$F2=="206"))
kruskal.test(C28~F1, data = dad_L2) 
comparison<-kruskal(dad_L2$C28,dad_L2$F1,group=TRUE);comparison

dad_L3=with(data, subset(data, data$F2=="380"))
kruskal.test(C28~F1, data = dad_L3)
comparison<-kruskal(dad_L3$C28,dad_L3$F1,group=TRUE);comparison

dad_L4=with(data, subset(data, data$F2=="761"))
kruskal.test(C28~F1, data = dad_L4)
comparison<-kruskal(dad_L4$C28,dad_L4$F1,group=TRUE);comparison

dad_L5=with(data, subset(data, data$F2=="1142"))
kruskal.test(C28~F1, data = dad_L5)
comparison<-kruskal(dad_L5$C28,dad_L5$F1,group=TRUE);comparison

dad_L1=with(data, subset(data,data$F1=="EC22"))
kruskal.test(C28~F2, data = dad_L1)
comparison<-kruskal(dad_L1$C28,dad_L1$F2,group=TRUE);comparison

dad_L2=with(data, subset(data,data$F1=="EC40"))
kruskal.test(C28~F2, data = dad_L2)
comparison<-kruskal(dad_L2$C28,dad_L2$F2,group=TRUE);comparison

