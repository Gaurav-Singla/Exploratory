# Import Data Table
epc = read.table("household_power_consumption.txt", header = TRUE, sep = ";",stringsAsFactors=FALSE)

# Replace "?" with NA and remove rows with missing values
epc[epc == "?"] = NA
epc = na.omit(epc)

# Changing 'Date' column to Date class
epc$Date = as.Date(epc$Date, format = "%d/%m/%Y")

# Subsetting the data
epc1 = subset(epc, Date>="2007-02-01" & Date <="2007-02-02")

# Adding a datatime column
epc1$datetime = as.POSIXct(paste(epc1$Date, epc1$Time), format="%Y-%m-%d %H:%M:%S")

# Change 3:9 columns to Numeric class
cols = c(3:9)    
epc1[cols] <- lapply(epc1[cols], as.numeric) 

# plot 1
png(filename = "plot1.png",
    width = 480, height = 480, units = "px")
hist(epc1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power",breaks = 11)
dev.off()
