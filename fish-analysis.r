.libPaths("D:/R Library")
source("R/theme.R")
library(tidyverse)
data<-read.csv("D:/NRES800/2018_10_19/gittutoral/Data/Gaeta_etal_CLC_data.csv")

data %>% 
  mutate(length_cat = case_when((length>=300) ~ "Big", (length <= 200) ~ "Small")) -> data3


