library(tidyverse)
library(vegan)
library(gridExtra)
library(lubridate)
library(ggpubr)
library(ggrepel)
library(reshape2)

morph_df <- read.csv("data/stormcast_2017.csv", sep = ";") 
morph_df <- subset(morph_df, select = -c(1,3,9,10))

morph_lng_df <- melt(data = morph_df, value.name = "measurement", id.vars = c("site", "phase"), variable.name = "morph")

# Mean morphology per site

morph_gather_mean <- morph_lng_df %>%
  group_by(site, morph) %>%
  summarise(mean = mean(measurement, na.rm = TRUE)) %>%
  ungroup()


