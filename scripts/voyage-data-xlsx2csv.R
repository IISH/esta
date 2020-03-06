# Purpose: read in excel file and save as .csv
# Date: March 6th, 2020

# load libs
library(tidyverse)
library(readxl)

#set working dir
setwd("~/git/esta/")

# read in data
df <- read_excel("./data/source/2020-02-11%20Voyage%20data%20for%20visualisation%20demo.xlsx")
# names(df)

# remove capitals from header
names(df) <- tolower(names(df))
df

# save file as .csv
write.csv(df, "./data/derived/esta-demo.csv", row.names = FALSE)

#EOF