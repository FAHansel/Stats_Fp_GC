###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLMDATA

require(stats);require(xlsx);require(multcomp);require(lattice);require(effects);require(hnp);library(agricolae)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "NN"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=7);head(data)

###SEE DATA DETAILS

summary(subset(data,data$F1=="L1"&data$F2=="L1"));summary(subset(data,data$F1=="L1"&data$F2=="L2"));summary(subset(data,data$F1=="L1"&data$F2=="L3"))

summary(subset(data,data$F1=="L2"&data$F2=="L1"));summary(subset(data,data$F1=="L2"&data$F2=="L2"));summary(subset(data,data$F1=="L2"&data$F2=="L3"))

###RUN THE GLM STATS

m_C53=glm(C53~F1/F2,family=Gamma, data=data)
anova(m_C53,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C53)

