# Stats_Fp_GC

*Stats_Fp_GC is a repository that aims to provide tools in order to comprehensively apply univariate statistical analysis to gas chromatography – mass spectrometry fingerprint datasets*


Any use for publication purposes must be properly acknowledged by citing the following:

Melo, TO;  Franciscon, L; Brown, G, Kopka, J; Martinez-Seidel, F; Cunha, L; Madureira, LAS; Hansel, FA; TPI Network. Univariate statistical analysis of gas chromatography–mass spectrometry fingerprints analyses. Chemical Data Collections 33:100719, 2021.


All response variables provided in this repository were statistically tested using R and Rstudio (Version 1.1.453 – © 2009-2018 RStudio, Inc.). The peformed tests are a dependency of the packages: "stats", "xlsx", "multcomp", "lattice", "agricolae", "hnp", "ExpDes" and, "effects".

## Experiments

Repository files are divided by experiments.

1.	Nitrogen
1.	Soil_data

**YOU CAN USE THE FOLLOWING FLOWCHART AS GUIDE** *(see also attached PDFs for an extra copy)*

### Nitrogen

![N_flowchart](Images/N_flowchart.PNG)

### Soil

![Soil_flowchart](Images/Soil_flowchart.PNG)

## Usage instructions

The excel “R_FILE.xlsx” is the template that was designed as an explanation of how our dataset was built to run the R scripts. Therefore any external users who want to use the code detailed in this repository are recommended to borrow the structure from the excel file and build their own "R_FILE.xlsx".

### Input file

R_FILE.xlsx was divided in sheets, e.g., 

* Sheet_1

Named: 1_Details - Main effects and compound name abbreviations

* Sheet_2

Named: 2_N_NN - All dataset and how to build your table to scripts work

*Note:* the raw data were used for statistical treatment, in case of transformed data (e.g.
log10) the same criteria presented in figure 2 (manuscript) must be followed after transformation.

### Analyses outputs

After running the stats the subsequent sheets were filled according to the results. Thus, the R_script files were saved separately. 

In other words, each R script file runs specifically in one excel sheet, e.g., after running the normality script, file name “N_NN”, two new sheets were built: 3_LM and 7_NN

In the LM types of response the scripts “LM” or “LM_EFFECTS” were used, and according to the results the following sheets are filled with the variables: 4_LM_INT, 5_LM_F1 and 6_LM_F2

In the sheet 7_NN the script “GLM” was used, and after looking at the results using the command `plot(glm object)` the remaining sheets, i.e., 8_GLM, 9_GLM_INT, 10_GLM_F1, and 11_GLM_F2 and 12_NP, were filled with the variables.

In the sheet 12_NP using the script “NP” the following sheets were filled with the variables:
13_NP_F1_F2, 14_NP_F1 and 15_NP_F2.

The post hoc test scripts run in their specific sheet.

**IMPORTANT:** THE SCRIPT FILE NAMES AND SHEETS HAVE THE SAME NAME.

*Note:* When analysing the main effects (F1 and F2) separately with comparisons within the levels in the LM or GLM types of response,
the script files “LM_EFFECTS” and “GLM_EFFECTS” do not provide the stats of F2 as whole.
Thus, we can only filled the sheets, 4_LM_INT, 5_LM_F1, 9_GLM_INT, and 10_GLM_F1 with the variables.
