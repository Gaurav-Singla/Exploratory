#plot 2
png(filename = "plot2.png",
    width = 480, height = 480, units = "px")
plot(epc1$datetime,epc1$Global_active_power,
     xlab = "", ylab = "Global Active Power (kilowatts)","l")
dev.off()
