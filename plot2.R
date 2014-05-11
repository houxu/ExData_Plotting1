setwd("E:/study/ComputerPrograms/courseCode/dataScienceCoursera/exploratoryDataAnalysis/project1")

# read the data
electricPowerConsumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";"
                                       , na.strings = "?", stringsAsFactors=FALSE)

# get the plot data and remove the original data
plotData <- subset(electricPowerConsumption, 
                   electricPowerConsumption$Date == "1/2/2007" | electricPowerConsumption$Date== "2/2/2007")
rm(electricPowerConsumption)

# cat the date and time
plotData$datetime <- strptime(paste(plotData$Date, plotData$Time), format = "%d/%m/%Y %H:%M:%S")

# plot2
png(filename = "plot2.png", width = 480, height = 480)
plot(plotData$datetime, plotData$Global_active_power, xlab="", type = "l", ylab = "Global Active Power (kilowatts)")
dev.off()