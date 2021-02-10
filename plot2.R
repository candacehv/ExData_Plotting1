source("Week1CHV.R")
library(graphics)

png("plot2.png", width = 480, height = 480)
plot2 <- with(allData, plot(allData$datetime, allData$Global_active_power, 
                   type="l",
                   xlab="datetime",
                   ylab = "Global Active Power (kilowatts)"))

dev.off()
