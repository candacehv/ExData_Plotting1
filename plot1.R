source("Week1CHV.R")
library(graphics)

#Draw a histogram with red bins where y axis is "Frequency" and x axis is Global 
#active power. 

png("plot1.png", width = 480, height = 480)
plot1 <- hist(allData$Global_active_power, 
     col="red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)"
     )

dev.off()