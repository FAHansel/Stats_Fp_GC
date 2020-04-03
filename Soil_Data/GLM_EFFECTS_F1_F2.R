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

###SEE INTO THE LEVELS

###F1

m_C53=glm(C53~F1,family=Gamma, subset(data,data$F2=="L1"))
anova(m_C53,test="Chisq");
par(mfrow=c(2,2));plot(m_C53)
comp= summary(glht(m_C53, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let

m_C53=glm(C53~F1,family=Gamma, subset(data,data$F2=="L2"))
anova(m_C53,test="Chisq");
par(mfrow=c(2,2));plot(m_C53)
comp= summary(glht(m_C53, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let


m_C53=glm(C53~F1,family=Gamma, subset(data,data$F2=="L3"))
anova(m_C53,test="Chisq");
par(mfrow=c(2,2));plot(m_C53)
comp= summary(glht(m_C53, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let

###F2

m_C53=glm(C53~F2,family=Gamma, subset(data,data$F1=="L1"))
anova(m_C53,test="Chisq");
par(mfrow=c(2,2));plot(m_C53)
comp= summary(glht(m_C53, linfct=mcp(F2="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let

m_C53=glm(C53~F2,family=Gamma, subset(data,data$F1=="L2"))
anova(m_C53,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C53)
comp= summary(glht(m_C53, linfct=mcp(F2="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let

