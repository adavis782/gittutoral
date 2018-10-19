.libPaths("D:/R Library")
source("R/theme.R")
library(tidyverse)
data<-read.csv("D:/NRES800/2018_10_19/gittutoral/Data/Gaeta_etal_CLC_data.csv")

data %>% 
  mutate(length_cat = case_when((length>=200) ~ "Big", (length <= 200) ~ "Small")) -> data3


ggplot()+
  geom_histogram(data=data3, aes(scalelength, fill=length_cat))
+facet_wrap(~length_cat)+theme_Apres()
