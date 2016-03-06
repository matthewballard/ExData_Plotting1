setwd("~/Documents/git/ExData_Plotting1")
test <- read.delim("household_power_consumption.txt", sep = ";", na = "?")
test <- test[grep("^1/2/2007$|^2/2/2007$",test$Date),]
test$DateTime <- strptime(paste(test$Date,test$Time),"%d/%m/%Y %H:%M:%S")

plot(test$DateTime,test$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, "plot2.png", height=480, width=480)
dev.off()
