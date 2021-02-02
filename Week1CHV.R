##############################
# Author: www.github.com/candacehv
# Version: 1.0
# Description: Week 1 Project for Johns Hopkins University's "Exploratory Data  
# Analysis" course, part of the Data Science Specialization. This script imports
# air pollution data and 4 files which create specific graphs, which are saved
# as PNG files. 
##############################


# Read data with readr, which is much faster than R's built-in read functions
library(readr)
library(sqldf)
library(chron)
# 1. Complete dataset has 2m+ rows. Read in data for dates 2007-02-01 and
# 2007-02-02.
# 2. Missing values are marked with '?'
# 3. Data is in file called data
# # 4. ";" is separator
setwd("C:/Users/orhol/Desktop/Candace_School/MOOCS/Johns Hopkins Data Science/4. Exploratory Data Analysis/Week 1/ExData_Plotting1")
allData <- read.csv.sql("data/household_power_consumption.txt", "select * from file where Date = '1/2/2007' or Date = '2/2/2007' ",  sep=";")


print(head(allData))
allData$Date <- as.Date(allData$Date, format='%d/%m/%Y')
allData$Time <- chron(times=allData$Time)

return(allData) 
