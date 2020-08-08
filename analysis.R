library(tidyverse)
library(ggplot2)

## data wrangling 
eck_df <- read.csv("data/ecklonia_morphometrics.csv", sep = ",", as.is= T)
stormcast_df <- read.csv("data/stormcast_2017.csv", sep = ";", as.is = T)

eck_df <- eck_df %>% 
  select(site, primaryLength, primaryWidth, stipeLength, stipeCirc)

eck_df_long <- gather(eck_df, value = "value", morphometric, primaryLength:stipeCirc) # change from wide to long

stormcast_df <- stormcast_df %>% # select out only numerical data, i.e "holdfast" and "cluster" have been excluded
  select(site, phase, stipe_length, stipe_circ, primary_length, primary_width)

stormcast_df_long <- gather(stormcast_df, value = "value", morphometric, stipe_length:primary_width)
##

## Characterise morphological characteristics from reference data base i.e "eck_df"
site_positions <- c("Betty's Bay","Kalk Bay", "Miller's Point", "Baboon Rock",  "Batsata Rock", "Buffels Bay","Scarborough", "Soetwater", "Kommetjie","Hout Bay","Oudekraal", "St. Helena Bay")

eck_box <- ggplot(data = eck_df_long, aes(x = site, y = value)) + 
  geom_boxplot(notch = FALSE) +
  scale_x_discrete(limits = site_positions) + 
  facet_wrap(~morphometric, scales = "free") + 
  coord_flip()
eck_box  
##

## Characterise morphological characteristics from storm data, comparing "before" and "after"
positions_storm <- c("Noordehoek","Longbeach","Platboom", "Oilifantsbos")

stormcast_box <- ggplot(data = stormcast_df_long, aes(x = site, y = value, fill = phase)) + 
  geom_boxplot(notch = FALSE) +
  scale_x_discrete(limits = positions_storm) + 
  facet_wrap(~morphometric, scales = "free") + 
  coord_flip()
stormcast_box
##
