###PACKAGE TO OPEN THE EXCEL FILE

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH DATA (BLUE)

data9 = read.xlsx('R_FILE.xlsx',sheetIndex=2);head(data)

###SEE THE DATA

head(data);names(data);dim(data); str(data)
summary(data);


###RUN THE NORMALITY TEST - NOTE: REPLACE THE COMPOUNDS ABBREVIATION (Cx) ON THE SCRIPT

shapiro.test(data$C8)

shapiro.test(data$C17)

shapiro.test(data$C18)

shapiro.test(data$C29)

shapiro.test(data$C26)

shapiro.test(data$C28)

shapiro.test(data$C125)

shapiro.test(data$C132)

shapiro.test(data$C155)


###C28 SUBSET DATA "IVA34"

shapiro.test(subset(data,data$F1=="EC40")$C28)
