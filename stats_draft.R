library(tidyverse)
library(vegan)
library(lubridate)
library(ggpubr)
library(reshape2)

morph_df <- read.csv("data/stormcast_2017.csv", sep = ";", as.is=T) 
morph_df <- subset(morph_df, select = -c(1,3,9,10))

morph_lng_df <- melt(data = morph_df, value.name = "measurement", id.vars = c("site", "phase"), variable.name = "morph")

ggplot(data = morph_lng_df, aes(x = site, y = measurement)) +
  geom_boxplot() +
  facet_wrap(~morph, scales = "free_x", strip.position = "bottom", ncol = 5) +
  coord_flip() + 
  theme(strip.background = element_blank(), strip.placement = "outside", text = element_text(size = 4.5)) +
  theme_bw() +
  xlab("") +
  ylab("")

