source("Week1CHV.R")
library(graphics)

png("plot2.png", width = 480, height = 480)
plot1 <- with(allData, plot(allData$datetime, allData$Global_active_power, 
                   type="l",
                   ylab = "Global Active Power (kilowatts)"))

dev.off()
