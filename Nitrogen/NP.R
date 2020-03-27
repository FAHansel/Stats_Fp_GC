###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE NP: NON-NORMAL DATA "NN"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NP"DATA (BLUE)

data1 = read.xlsx('R_FILE.xlsx',sheetIndex=12);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###RUN THE NP STATS IN F1 AND F2 - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

kruskal.test(C8~F1, data = data)
kruskal.test(C8~F2, data = data)

kruskal.test(C28~F1, data = data)
kruskal.test(C28~F2, data = data)

kruskal.test(C109~F1, data = data)
kruskal.test(C109~F2, data = data)
