rm(list=ls())

getwd()
setwd("/Users/haohsiangko/flight-earth/flights/")
library(jsonlite)
library(rvest)
library(httr)
library(dplyr)
library(stringr)

path <- "/Users/haohsiangko/flight-earth/flights/top10/rank1/"
files <- list.files(path = path, pattern = "*.csv")

df1 <- data.frame()
df2 <- data.frame()
for(file in files) {
  df1 <- read.csv(paste(path, file, sep=""))
  df2 <- rbind(df2, df1)
}

write.csv(df2, file = "rank1.csv", row.names = F, fileEncoding = "UTF-8")

