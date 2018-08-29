library(vegan)
library(ggplot2)
library(tidyverse)
library(reshape2)

df <- read.csv("data/stormcast_2017.csv", sep = ";") 

df_long <- df %>%  
  melt(value.name = "value", id.vars = c("ind","site", "date", "phase"), variable.name = "morph")


