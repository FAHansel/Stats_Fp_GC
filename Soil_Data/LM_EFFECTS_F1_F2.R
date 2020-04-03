###PACKAGE TO OPEN THE EXCEL FILE AND RUN THE LM DATA

require(stats);require(xlsx);require(multcomp);require(lattice);require(effects);require(hnp);library(agricolae)

####WRITE EXCEL FILE NAME (GREEN) AND THE NUMBER OF EXCEL SHEET WITH "LM"DATA (BLUE)

data = read.xlsx('R_FILE.xlsx',sheetIndex=3);head(data)

###SEE THE DATA DETAILS

head(data);names(data);dim(data); str(data); summary(data);

###RUN THE LM STATS

###SEE INTO THE LEVELS

###F1

m_C17=lm(C17~F1,subset(data,data$F2=="L1"))
anova(m_C17) 
par(mfrow=c(2,2));plot(m_C17)
tukey <- HSD.test(y = subset(data,data$F2=="L1")$C17,
                  trt = subset(data,data$F2=="L1")$F1,
                  MSerror = deviance(m_C17)/df.residual(m_C17),
                  DFerror = df.residual(m_C17),
                  console = TRUE)

m_C17=lm(C17~F1,subset(data,data$F2=="L2"))
anova(m_C17) 
par(mfrow=c(2,2));plot(m_C17)
tukey <- HSD.test(y = subset(data,data$F2=="L2")$C17,
                  trt = subset(data,data$F2=="L2")$F1,
                  MSerror = deviance(m_C17)/df.residual(m_C17),
                  DFerror = df.residual(m_C17),
                  console = TRUE)


m_C17=lm(C17~F1,subset(data,data$F2=="L3"))
anova(m_C17) 
par(mfrow=c(2,2));plot(m_C17)
tukey <- HSD.test(y = subset(data,data$F2=="L3")$C17,
                  trt = subset(data,data$F2=="L3")$F1,
                  MSerror = deviance(m_C17)/df.residual(m_C17),
                  DFerror = df.residual(m_C17),
                  console = TRUE)

###F2

m_C17=lm(C17~F2,subset(data,data$F1=="L1"))
anova(m_C17) 
par(mfrow=c(2,2));plot(m_C17)
tukey <- HSD.test(y = subset(data,data$F1=="L1")$C17,
                  trt = subset(data,data$F1=="L1")$F2,
                  MSerror = deviance(m_C17)/df.residual(m_C17),
                  DFerror = df.residual(m_C17),
                  console = TRUE)

m_C17=lm(C17~F2,subset(data,data$F1=="L2"))
anova(m_C17) 
par(mfrow=c(2,2));plot(m_C17)
tukey <- HSD.test(y = subset(data,data$F1=="L2")$C17,
                  trt = subset(data,data$F1=="L2")$F2,
                  MSerror = deviance(m_C17)/df.residual(m_C17),
                  DFerror = df.residual(m_C17),
                  console = TRUE)

