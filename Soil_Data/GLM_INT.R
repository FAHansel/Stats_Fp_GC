###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM COMPARISON

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM_INT"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=9);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);


###RUN THE GLM COMPARISON WITH INTERACTION F1 AND F2 - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###C114

data$ab= interaction(data$F1, data$F2)
m_C114=glm(C114~ab,family=Gamma, data=data)
anova(m_C114,test="Chisq"); 
par(mfrow=c(2,2));plot(m_C114)
comp= summary(glht(m_C114, linfct=mcp(ab="Tukey")),test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let
