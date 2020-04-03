###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP F1 COMPARISON

require(stats);require(xlsx);require(multcomp);require(lattice);require(effects);require(hnp);library(agricolae)

###WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F1"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=14);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS F1 SIGNIFICANT

###C5

dad_F1=with(data,data)
kruskal.test(C5~F1, data)
comparison<-kruskal(dad_F1$C5,dad_F1$F1,group=TRUE);comparison