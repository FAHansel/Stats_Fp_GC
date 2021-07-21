###PACKAGE TO OPEN THE EXCEL FILE

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "DATA" (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=2);head(data)

###SEE THE DATA

head(data);names(data);dim(data); str(data)
summary(data);


###RUN THE NORMALITY TEST - NOTE: REPLACE THE COMPOUNDS ABBREVIATION (Cx) ON THE SCRIPT

shapiro.test(data$C5)

shapiro.test(data$C8)

shapiro.test(data$C13)

shapiro.test(data$C15)

shapiro.test(data$C17)

shapiro.test(data$C51)

shapiro.test(data$C52)

shapiro.test(data$C114)



