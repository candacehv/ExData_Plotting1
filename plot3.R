source("Week1CHV.R")
source("plot1.R")
source("plot2.R")
library(graphics)


png("plot3.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot3 <- with(allData, plot(allData$datetime, allData$Sub_metering_1, 
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
