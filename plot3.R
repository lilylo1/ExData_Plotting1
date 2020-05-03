household_power_consumption <- read.csv("C:/lilylo/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
View(household_power_consumption)

data<-subset(household_power_consumption,as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-01")|as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-02"))

date_time<-strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")

Sub_m1<-as.numeric(data$Sub_metering_1)
Sub_m2<-as.numeric(data$Sub_metering_2)

plot(date_time,Sub_m1,type="l",xlab="",ylab="Energy sub metering")

lines(date_time,Sub_m2,col="red")
lines(date_time,data$Sub_metering_3,col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red", "blue"),lty = 1, cex=0.8)

png(file="C:/lilylo/plot3.png",width=480, height=480)
plot(date_time,Sub_m1,type="l",xlab="",ylab="Energy sub metering")
lines(date_time,Sub_m2,col="red")
lines(date_time,data$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red", "blue"),lty = 1, cex=0.8)
dev.off()