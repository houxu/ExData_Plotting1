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

# plot3
png("plot3.png", width = 480, height = 480)
plot(plotData$datetime, plotData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(plotData$datetime, plotData$Sub_metering_2, col="red")
lines(plotData$datetime, plotData$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty=1,cex=0.8)
dev.off()