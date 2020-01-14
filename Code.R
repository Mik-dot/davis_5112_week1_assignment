install.packages("haven")
library(haven)
library(tidyverse)
library(dplyr)

NFHS <- read_dta("IAHR52FL.dta")
View(NFHS)

# limited search from "hhid" to "shstruc" to reduce the variables I will be working with.
hh <- select(NFHS, "hhid":"shstruc")

# Filtering urban house type to analyse data for type of urban area and household size. 
urban <- filter(hh, hv025 == 1)
urban <- mutate(urban, Capital_large_city = hv026 == 0, Small_city = hv026 == 1, Town = hv026 == 2, Countryside = hv026 == 3)

#Calculating the mean household size for urban houses in large cities.

Large_city <- urban %>%
  group_by(hv009) %>%
  
  summaries(
    filter(hv026 == 0),
    mean = mean(hv009)
  )

