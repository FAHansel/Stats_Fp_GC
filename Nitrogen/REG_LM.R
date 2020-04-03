###PACKAGES TO OPEN THE EXCEL FILE AND RUN THE GLM REGRESSION

require(stats);require(xlsx);require(multcomp);require(lattice);require(agricolae);require(hnp);require(ExpDes);require(effects)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "GLM"DATA (BLUE)

data6 = read.xlsx('R_FILE.xlsx',sheetIndex=3);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data);summary(data);

###REGRESSION - STATISTICAL SIGNIFICANCE

with(data,fat2.crd(F1,F2,C18, quali = c(TRUE,FALSE)))
m_C18= lm(C18~F1*F2, data=data);par(mfrow=c(2,2));plot(m_C18)

with(data,fat2.crd(F1,F2,C132, quali = c(TRUE,FALSE))) 
m_C132= lm(C132~F1*F2, data=data);par(mfrow=c(2,2));plot(m_C132)

with(data,fat2.crd(F1,F2,C155, quali = c(TRUE,FALSE))) 
m_C155= lm(C155~F1*F2, data=data);par(mfrow=c(2,2));plot(m_C155)



