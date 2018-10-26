.libPaths("D:/R Library")

library(tidyverse)
source("R/theme.R")

# data<-read.csv("D:/NRES800/2018_10_19/gittutoral/Data/Gaeta_etal_CLC_data.csv")
data<-read.csv("Data/Gaeta_etal_CLC_data.csv")

data %>% 
  mutate(length_cat = case_when((length>=200) ~ "Big", 
                                (length <= 200) ~ "Small")) -> data3
ggplot() +
  geom_histogram(data=data3, aes(scalelength, fill=length_cat)) +
  facet_wrap(~length_cat) + 
  theme_Apres()

## Chris's modifications

ggplot() +
  geom_histogram(data = data3, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))
