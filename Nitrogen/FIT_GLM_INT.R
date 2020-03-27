
###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM REGRESSION

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM"DATA (BLUE)

data8 = read.xlsx('R_FILE.xlsx',sheetIndex=9);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);


###CHECK REGRESSION ORDER F1 SEPARATELY

###C125###

levels(data$F1)

###IVA10

mIVA10 = glm(C125~poly(F2,degree=3),family=Gamma (link = "identity"), data=subset(data, F1==levels(data$F1)[1]))
lapply(list(mIVA10), summary)
lapply(list(mIVA10), coef)
xyplot(C125~F2, groups=F1, subset(data,data$F1=="IVA10"), auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))

###ORDER

mIVA10 = glm(C125~F2+I(F2^2)+I(F2^3),family=Gamma (link = "identity"), data=subset(data, F1==levels(data$F1)[1]))
lapply(list(mIVA10), summary)
lapply(list(mIVA10), coef)
SQEm1=summary(mIVA10)$deviance^2
SQEm1
SQTm1=var(data$C125)*(length(data$C125)-1)
SQTm1
SQEm1/SQTm1
R2=1-SQEm1/SQTm1
R2

###IVA34

mIVA34 = glm(C125~poly(F2,degree=3),family=Gamma (link = "identity"), data=subset(data, F1==levels(data$F1)[2]))
lapply(list(mIVA34), summary)
lapply(list(mIVA34), coef)
xyplot(C125~F2, groups=F1, subset(data,data$F1=="IVA34"), auto.key=TRUE, jitter.x=TRUE, type=c("p","a"))

###ORDER

mIVA34 = glm(C125~F2,family=Gamma (link = "identity"), data=subset(data, F1==levels(data$F1)[1]))
lapply(list(mIVA34), summary)
lapply(list(mIVA34), coef)
SQEm1=summary(mIVA34)$deviance^2
SQEm1
SQTm1=var(data$C125)*(length(data$C125)-1)
SQTm1
SQEm1/SQTm1
R2=1-SQEm1/SQTm1
R2









