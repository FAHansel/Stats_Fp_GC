###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE LM DATA

require(stats);require(xlsx);require(multcomp);require(lattice);require(effects);require(hnp);library(agricolae)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "LM"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=3);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data); summary(data);

###RUN THE LM STATS

###C17

m_C17=lm(C17~F1/F2,data=data)
anova(m_C17)
par(mfrow=c(2,2));plot(m_C17)
