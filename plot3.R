setwd("~/Desktop/DSS/4-exploratory-data-analysis/project1/")

# read the data
data<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,colClasses = "character")
data<-data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# extract the subset we need
GlActPower<-as.numeric(data$Global_active_power)

# construct the plot
png(file="plot3.png", height=480, width=480)

plot(datetime,data$Sub_metering_1,type='l',xlab ="",ylab="Energy sub metering")
lines(datetime,data$Sub_metering_2,col="red",type='l')
lines(datetime,data$Sub_metering_3,col="blue",type='l')
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

dev.off()

