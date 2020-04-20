###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE GLM COMPARISONDATA

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM_F2"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=11);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###RUN THE GLM COMPARISON WITH F2 SIGNIFICANT - NOTE: REPLACE THE COMPOUNDS ABBREVIATION ON THE SCRIPT

###C13

m_C13=glm(C13~F2,family=Gamma,data=data) 
par(mfrow=c(2,2));plot(m_C13)
comp= summary(glht(m_C13, linfct=mcp(F2="Tukey")), test=adjusted(type="single-step"))
comp
let=cld(comp,decreasing = TRUE);let
