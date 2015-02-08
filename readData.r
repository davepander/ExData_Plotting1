#library(lubridate)

# Check for file
# Save it to an .rds file for easy access later.
if (!file.exists('filtered_power.rds')) {
  #download.file(paste0('https://d396qusza40orc.cloudfront.net/',
  #                     'exdata%2Fdata%2Fhousehold_power_consumption.zip'),
  #              method='curl', destfile='raw-power-data.zip')
  #unzip('raw-power-data.zip')
  
  # Read data
  raw_power <- read.table("household_power_consumption.txt", header=TRUE,
                         sep=';', na.strings='?',
                         colClasses=c(rep('character', 2), 
                                      rep('numeric', 7)))
  
  
  # Filter data
  raw_power <- raw_power[(raw_power$Date=="1/2/2007" | raw_power$Date=="2/2/2007"),]
   
  # Concatenate date and time
  raw_power$DateTime <- strptime(paste(raw_power$Date, raw_power$Time, sep=" "), 
                            format="%d/%m/%Y %H:%M:%S")
  
  # Save file
  saveRDS(raw_power, file='filtered_power.rds')
} else {
  raw_power <- readRDS('filtered_power.rds')
}