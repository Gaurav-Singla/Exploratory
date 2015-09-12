#plot 3

png(filename = "plot3.png",
    width = 480, height = 480, units = "px")

plot(epc1$datetime,epc1$Sub_metering_1,col = "black","l", xlab = "", ylab = "Energy sub metering")
lines(epc1$datetime,epc1$Sub_metering_2,col = "red","l")
lines(epc1$datetime,epc1$Sub_metering_3,col = "blue","l")
legend("topright",lwd = 1, lty = 1, col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()