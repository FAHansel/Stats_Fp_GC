###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM COMPARISON: NON-NORMAL DATA "NN"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM_F2"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=11);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###RUN THE GLM COMPARISON WITH F2 SIGNIFICANT - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

m_C5=glm(C5~F2,family=Gamma,subset(data,data$F1=="tpi"))
anova(m_C5,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C5)
hnp(m_C5, pch = 20, cex = 1.2)
comp= summary(glht(m_C5, linfct=mcp(F2="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let
m_C5=glm(C5~F1,family=Gamma,subset(data,data$F2=="root")) 
anova(m_C5,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C5)
comp= summary(glht(m_C5, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let

###

m_C13=glm(C13~F2,family=Gamma,subset(data,data$F1=="tpi")) 
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F2="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let

m_C13=glm(C13~F2,family=Gamma,subset(data,data$F1=="control")) 
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F2="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let

m_C13=glm(C13~F1,family=Gamma,subset(data,data$F2=="root"))
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let

m_C13=glm(C13~F1,family=Gamma,subset(data,data$F2=="physic"))
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let

m_C13=glm(C13~F1,family=Gamma,subset(data,data$F2=="root"))
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let

####




#####

m_C13=glm(C13~F2,family=Gamma,data=data) 
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F2="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let

m_C13=glm(C13~F1,family=Gamma,data=data) 
anova(m_C13,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step")) # multiple comparison tests- F2
comp
let=cld(comp,decreasing = TRUE);let
