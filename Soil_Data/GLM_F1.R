###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM COMPARISON DATA

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM_F1"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=10);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###RUN THE GLM COMPARISON WITH F1 SIGNIFICANT - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###C8

m_C8=glm(C8~F1,family=Gamma,data=data) 
par(mfrow=c(2,2));plot(m_C8)
comp= summary(glht(m_C8, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let

###C13

m_C13=glm(C13~F1,family=Gamma,data=data) 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let

###C53

m_C53=glm(C53~F1,family=Gamma,data=data) 
par(mfrow=c(2,2));plot(m_C53)
comp= summary(glht(m_C53, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let
