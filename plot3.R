source("Week1CHV.R")
library(graphics)


png("plot3.png", width = 480, height = 480)
plot1 <- with(allData, plot(allData$datetime, allData$Sub_metering_1, 
                            type="l",
                            col="black",
                            xlab = "",
                            ylab = "Energy Sub Metering"))
lines(allData$datetime, allData$Sub_metering_2, col="red")
lines(allData$datetime, allData$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_etering_3"),
       border = "black",
       col=c("black", "red", "blue"), lty = 1, )

dev.off()
