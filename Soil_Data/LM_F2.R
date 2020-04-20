###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM COMPARISON: NON-NORMAL DATA "NN"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "LM_F2"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=6);head(data)

###SEE THE DATA

head(data);names(data);dim(data); str(data);summary(data);

###RUN THE LM COMPARISON WITH F2 SIGNIFICANT - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###NO SIGNIFICANT VARIABLE - BELOW IS ONLY AN EXAMPLE

m_C17=lm(C17~F2,data=data)
par(mfrow=c(2,2));plot(m_C17)
tukey <- HSD.test(y = data$C17,
                  trt = data$F2,
                  MSerror = deviance(m_C17)/df.residual(m_C17),
                  DFerror = df.residual(m_C17),
                  console = TRUE)
