setwd("~/Desktop/DSS/4-exploratory-data-analysis/project1/")

# read the data
data<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,colClasses = "character")
data<-data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# extract the subset we need
GlActPower<-as.numeric(data$Global_active_power)

# construct the plot
hist(GlActPower,main="Global Active Power",xlab = "Global Active Power (kilowatts)",col="red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

