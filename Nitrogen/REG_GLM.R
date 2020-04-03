
###PACKAGES TO OPEN THE EXCEL FILE AND RUN THE GLM REGRESSION

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM"DATA (BLUE)

data5 = read.xlsx('R_FILE.xlsx',sheetIndex=7);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data)
summary(data);

###REGRESSION - STATISTICAL SIGNIFICANCE

m_C8=glm(C8~F1*poly(F2,degree=3),family=Gamma (link = "identity"),data=data)
summary(m_C8)
xyplot(C8~F2, groups=F1, data=data, auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))
par(mfrow=c(2,2));plot(m_C8)
hnp(m_C8, pch = 20, cex = 1.2)

m_C17=glm(C17~F1*poly(F2,degree=3),family=Gamma (link = "identity"),data=data)
summary(m_C17)
xyplot(C17~F2, groups=F1, data=data, auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))
par(mfrow=c(2,2));plot(m_C17)

m_C26=glm(C26~F1*poly(F2,degree=3),family=Gamma (link = "identity"),data=data)
summary(m_C26)
xyplot(C26~F2, groups=F1, data=data, auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))
par(mfrow=c(2,2));plot(m_C26)

m_C28=glm(C28~F1*poly(F2,degree=3),family=Gamma (link = "identity"),data=data)
summary(m_C28)
xyplot(C28~F2, groups=F1, data=data, auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))
par(mfrow=c(2,2));plot(m_C28)
hnp(m_C28, pch = 20, cex = 1.2)

m_C29=glm(C29~F1*poly(F2,degree=3),family=Gamma (link = "identity"),data=data)
summary(m_C29)
xyplot(C29~F2, groups=F1, data=data, auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))
par(mfrow=c(2,2));plot(m_C29)

m_C125=glm(C125~F1*poly(F2,degree=3),family=Gamma (link = "identity"),data=data)
summary(m_C125)
xyplot(C125~F2, groups=F1, data=data, auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))
par(mfrow=c(2,2));plot(m_C125)
hnp(m_C125, pch = 20, cex = 1.2)

