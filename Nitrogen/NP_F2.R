###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP COMPARISON: NON-NORMAL DATA "NN"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F2"DATA (BLUE)

data4 = read.xlsx('R_FILE.xlsx',sheetIndex=15);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS GIVES F2 SIGNIFICANT

###CHECK THE F1 "dad_L1 and dad_L2" LEVELS FOR F2 SIGNIFICANT - "NITROGEN DOSES, A , B ,C D, E" - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

#VARIABLE C8

dad_F2=with(data,data)
kruskal.test(C8~F2, data)
comparison<-kruskal(dad_F2$C8,dad_F2$F2,group=TRUE);comparison

###IN EACH F1 LEVEL

dad_L1=with(data, subset(data,data$F1=="EC22"))
kruskal.test(C8~F2, data = dad_L1)
comparison<-kruskal(dad_L1$C8,dad_L1$F2,group=TRUE);comparison

dad_L2=with(data, subset(data,data$F1=="EC40"))
kruskal.test(C8~F2, data = dad_L2)
comparison<-kruskal(dad_L2$C8,dad_L2$F2,group=TRUE);comparison

