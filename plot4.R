setwd("~/Documents/git/ExData_Plotting1")
test <- read.delim("household_power_consumption.txt", sep = ";", na = "?")
test <- test[grep("^1/2/2007$|^2/2/2007$",test$Date),]
test$DateTime <- strptime(paste(test$Date,test$Time),"%d/%m/%Y %H:%M:%S")

par(mfcol = c(2,2))

plot(test$DateTime,test$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "", lwd = 2)

plot(test$DateTime, test$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(test$DateTime, test$Sub_metering_2, col = "red")
lines(test$DateTime, test$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty = 1, bty = "n")

plot(test$DateTime,test$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(test$DateTime,test$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime", lwd = 2)

dev.copy(png, "plot4.png", height=480, width=480)
dev.off()
