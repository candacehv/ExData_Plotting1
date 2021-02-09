source("Week1CHV.R")
library(graphics)

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

#plot [1,1]
with(allData, plot(allData$datetime, allData$Global_active_power, 
                   type="l",
                   xlab="",
                   ylab = "Global Active Power (kilowatts)"))

#plot [1,2]
with(allData, plot(allData$datetime, allData$Voltage, 
                   type="l",
                   xlab = "datetime",
                   ylab = "Voltage"))

#plot [2,1]
with(allData, plot(allData$datetime, allData$Sub_metering_1, 
                   type="l",
                   col="black",
                   xlab = "",
                   ylab = "Energy Sub Metering"))
lines(allData$datetime, allData$Sub_metering_2, col="red")
lines(allData$datetime, allData$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_etering_3"),
       col=c("black", "red", "blue"), lty = 1, )


#plot [2,2]
with(allData, plot(allData$datetime, Global_reactive_power, 
                   type="l",
                   xlab = "datetime"))


dev.off()
