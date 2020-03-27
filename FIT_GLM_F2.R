
###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM REGRESSION WIHT F2 SIGNIFICANT

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM"DATA (BLUE)

data7 = read.xlsx('R_FILE.xlsx',sheetIndex=11);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data)
summary(data);

###C17###

###RECHECK FOR F2 ONLY

m_C17=glm(C17~poly(F2,degree=3),family=Gamma (link = "identity"),data=data)
summary(m_C17)
xyplot(C17~F2, data=data, auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))
par(mfrow=c(2,2));plot(m_C17)

###ORDER

m_C17=glm(C17~F2+I(F2^2),family=Gamma (link = "identity"), data=data)
summary(m_C17)
coef(m_C17)
SQEm1=summary(m_C17)$deviance^2
SQEm1
SQTm1=var(data$C17)*(length(data$C17)-1)
SQTm1
SQEm1/SQTm1
R2=1-SQEm1/SQTm1
R2

