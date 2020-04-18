source("load_data.R")

#Set space for four plots
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

#Plot 1
plot(house_data$house_time, house_data$Global_active_power, type= "l", ylab = "Global Active Power (kilowatts)", xlab = "")

#Plot 2
plot(house_data$house_time, house_data$Voltage, type= "l", ylab = "Voltage", xlab = "datetime")

#Plot 3
plot(house_data$house_time, house_data$Sub_metering_1, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(house_data$house_time, house_data$Sub_metering_2, col = "red")
lines(house_data$house_time, house_data$Sub_metering_3, col = "blue")
legend("topright", col=c("black", "red", "blue"), lty= c(1,1,1), lwd = c(0.5,0.5), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex=0.5)

#Plot 4
plot(house_data$house_time, house_data$Global_reactive_power, type= "l", ylab = "GLobal_Reactive_Power", xlab = "datetime")

#Copy plot to png file
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
