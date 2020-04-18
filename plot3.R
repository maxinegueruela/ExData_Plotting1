source("load_data.R")

#plot 3

plot(house_data$house_time, house_data$Sub_metering_1, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(house_data$house_time, house_data$Sub_metering_2, col = "red")
lines(house_data$house_time, house_data$Sub_metering_3, col = "blue")


legend("topright", col=c("black", "red", "blue"), lty= c(1,1,1), lwd = c(0.5,0.5), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png,"plot3.png", width=480, height=480)
dev.off()

