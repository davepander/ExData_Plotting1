# Load data
source('readData.R')

# Open png device
png(filename='plot1.png')

# Make plot
hist(raw_power$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Turn off device
dev.off()