###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLMDATA

require(stats);require(xlsx);require(multcomp);require(lattice);require(effects);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NN"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=7);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data); summary(data);

###RUN THE GLM STATS WITH INTERACTION F1 AND F2 - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

m_C5=glm(C5~F1*F2,family=Gamma, data=data)
anova(m_C5,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C5)

m_C8=glm(C8~F1*F2,family=Gamma, data=data)
anova(m_C8,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C8)
hnp(m_C8, pch = 20, cex = 1.2)

m_C13=glm(C13~F1*F2,family=Gamma, data=data)
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)

m_C15=glm(C15~F1*F2,family=Gamma, data=data)
anova(m_C15,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C15)

m_C51=glm(C51~F1*F2,family=Gamma, data=data)
anova(m_C51,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C51)
hnp(m_C51, pch = 20, cex = 1.2)

m_C114=glm(C114~F1*F2,family=Gamma, data=data)
anova(m_C114,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C114)




