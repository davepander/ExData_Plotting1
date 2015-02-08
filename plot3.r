# Load data
source('readData.R')

# Open png device
png(filename='plot3.png')

# Make plot
plot(raw_power$DateTime, raw_power$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(raw_power$DateTime, raw_power$Sub_metering_2, col='red')
lines(raw_power$DateTime, raw_power$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

# Turn off device
dev.off()