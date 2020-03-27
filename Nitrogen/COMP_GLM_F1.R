###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM COMPARISON: NON-NORMAL DATA "NN"

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM_C"DATA (BLUE)

data10 = read.xlsx('R_FILE.xlsx',sheetIndex=10);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###RUN THE GLM COMPARISON WITH CLONE SIGNIFICANT - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

m_C29=glm(C29~F1,family=Gamma,data=data) 
anova(m_C29,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C29)
hnp(m_C29, pch = 20, cex = 1.2)
comp= summary(glht(m_C29, linfct=mcp(F1="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let




