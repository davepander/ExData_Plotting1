# Load data
source('readData.R')

# Open device
png(filename='plot4.png')

## Make plots
par(mfrow=c(2,2))

# Top left
plot(raw_power$DateTime, raw_power$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right
plot(raw_power$DateTime, raw_power$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

# Bottom left
plot(raw_power$DateTime, raw_power$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(raw_power$DateTime, raw_power$Sub_metering_2, col='red')
lines(raw_power$DateTime, raw_power$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

# Bottom right
plot(raw_power$DateTime, raw_power$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Turn off device
dev.off()