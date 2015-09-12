#plot 4

png(filename = "plot4.png",
    width = 480, height = 480, units = "px")
par(mfrow = c(2,2))

plot(epc1$datetime,epc1$Global_active_power,
     xlab = "", ylab = "Global Active Power","l", mar = c(4,4,2,1), oma = c(0,0,2,0))

plot(epc1$datetime,epc1$Voltage,
     xlab = "datetime", ylab = "Voltage","l", mar = c(4,4,2,1), oma = c(0,0,2,0))

plot(epc1$datetime,epc1$Sub_metering_1,col = "black","l", xlab = "", ylab = "Energy sub metering", mar = c(4,4,2,1), oma = c(0,0,2,0))
lines(epc1$datetime,epc1$Sub_metering_2,col = "red","l")
lines(epc1$datetime,epc1$Sub_metering_3,col = "blue","l")
legend("topright",lwd = 1, lty = 1, col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


plot(epc1$datetime,epc1$Global_reactive_power,
     xlab = "datetime", ylab = "Global_reactive_power","l", mar = c(4,4,2,1), oma = c(0,0,0,0))

dev.off()