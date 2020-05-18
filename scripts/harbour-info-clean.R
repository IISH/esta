  # Purpose: read in excel file and save as .csv
  # Date: March 6th, 2020
  
  # clean workspace
  rm(list=ls())
  
  # load libs
  library(tidyverse)
  library(readxl)
  library(uuid)
  
  #set working dir
  setwd("~/git/esta/")
  
  # read in data
  df <- read_excel("./data/source/harbour-info.xlsx")
  
  # check data
  df[1:5,]
  
  # generate uuid
  df$locRepId <- UUIDgenerate(n=dim(df)[1])
  
  # save file as .csv
  write.csv(df, "./data/derived/harbour-info.csv", row.names = FALSE)
  
  #EOF