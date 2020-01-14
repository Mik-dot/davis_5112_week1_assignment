install.packages(haven)
library(haven)
library(tidyverse)
library(dplyr)

NFHS <- read_dta("IAHR52FL.dta")

View(NFHS)
hh <- select(NFHS, "hhid":"shstruc")


  