setwd("E:/study/ComputerPrograms/courseCode/dataScienceCoursera/exploratoryDataAnalysis/project1")

# read the data
electricPowerConsumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";"
                                      , na.strings = "?", stringsAsFactors=FALSE)

# get the plot data
plotData <- subset(electricPowerConsumption, 
                   electricPowerConsumption$Date == "1/2/2007" | electricPowerConsumption$Date== "2/2/2007")

# plot1
png(filename = "plot1.png", width = 480, height = 480)
hist(plotData$Global_active_power, 
     bg = "transparent", 
     col= "red",
     xlab= "Global Active Power (kilowatts)", 
     ylab= "Frequency", 
     main= "Global Active Power")
dev.off()