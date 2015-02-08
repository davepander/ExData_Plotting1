# Load data
source('readData.R')

# Open png device
png(filename='plot2.png')

# Make plot
plot(raw_power$DateTime, raw_power$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()