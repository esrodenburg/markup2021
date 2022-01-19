########################
###### ReadMe.txt ######
########################

#### Data ####
Name of file is "FEARadapted.sav"
The foreign package is used to load the data. Alternatively, the "haven" package could be used. 
Initially: 60 observations of 8 variables, after centering 11 variables. 
Used variables: exam (outcome), fostc, confidc, depressc (centered predictors)
Missings: mean imputation to avoid listwise deletion automatically used in R functions 

#### Required libraries #### 
library(knitr) # create nice looking output 
library(foreign) # reading spss data into R
library(brms) # used for bayes factor (model comparison)
library(bayestestR) # used for bayes factor (model comparison)
library(bain) # used for bayes factor (hypothesis testing)

#### Using the script #### 
Total lines of code: 351, end is denoted with # End of code  
Each question is answered below a separate subheading, running per subheading is advised, because sometimes matrices are removed in between. 
Subheadings are denoted by #### subheading #### 
In the script, functions from the brms, bayestestR and bain packages are used. Other functions are either base R or self-programmed. 
Interpretations are given in report (word file).
The same seed (1998) is set multiple times to ensure replicable results. 

#### Posterior predictive p value #### 
Here, only the last 10.000 lines of code are used to save time. Running with more samples is also possible, but will take a very long time. 

#### Notes #### 
Some matrices or dataframes are very large and will be removed by rm() in the code when they are no longer needed to save storage. 