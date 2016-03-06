setwd("~/Documents/git/ExData_Plotting1")
test <- read.delim("household_power_consumption.txt", sep = ";", na = "?")
test <- test[grep("^1/2/2007$|^2/2/2007$",test$Date),]
test$DateTime <- strptime(paste(test$Date,test$Time),"%d/%m/%Y %H:%M:%S")

hist(test$Global_active_power, col = "red", main ="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, "plot1.png", height=480, width=480)
dev.off()