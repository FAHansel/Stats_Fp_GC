###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE LM COMPARISON: NORMAL DATA "N"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "LM_INT"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=4);head(data)

###SEE THE DATA

head(data);names(data);dim(data); str(data)
summary(data);

###RUN THE LM COMPARISON WITH INTERACTION "*" F1 AND F2 - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###NO SIGNIFICANT VARIABLE - BELOW IS ONLY AN EXAMPLE

data$ab= interaction(data$F1, data$F2)
m_C17=lm(C17~ab,data=data)
anova(m_C17)
par(mfrow=c(2,2));plot(m_C17)
tukey <- HSD.test(y = data$C17,
                  trt = data$ab,
                  MSerror = deviance(m_C17)/df.residual(m_C17),
                  DFerror = df.residual(m_C17),
                  console = TRUE)
