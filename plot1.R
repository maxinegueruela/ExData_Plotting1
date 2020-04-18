source("load_data.R")

#Histogram 1 
hist(house_data$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
