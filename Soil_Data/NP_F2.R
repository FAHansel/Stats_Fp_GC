###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP F2 COMPARISON

require(stats);require(xlsx);require(multcomp);require(lattice);require(effects);require(hnp);library(agricolae)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP_F2"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=15);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###NON PARAMETRIC STATS F2 SIGNIFICANT

###C15

dad_F2=with(data,data)
kruskal.test(C15~F2, data)
comparison<-kruskal(dad_F2$C15,dad_F2$F2,group=TRUE);comparison

