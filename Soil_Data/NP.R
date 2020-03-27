###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP DATA

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=12);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###RUN THE NP STATS IN F1 AND F2 - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

kruskal.test(C5~F1, data = data)
kruskal.test(C5~F2, data = data)
kruskal.test(C5~F2,subset(data,data$F1=="tpi")) ###CAN ALSO BE CHECK THE SUBSET DATAS

kruskal.test(C15~F1, data = data)
kruskal.test(C15~F2, data = data)

kruskal.test(C51~F1, data = data)
kruskal.test(C51~F2, data = data)


