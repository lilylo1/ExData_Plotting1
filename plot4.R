household_power_consumption <- read.csv("C:/lilylo/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
View(household_power_consumption)

data<-subset(household_power_consumption,as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-01")|as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-02"))

date_time<-strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")

power<-as.numeric(data$Global_active_power)

Volt<-as.numeric(data$Voltage)

Sub_m1<-as.numeric(data$Sub_metering_1)

Sub_m2<-as.numeric(data$Sub_metering_2)

reactivepower<-as.numeric(data$Global_reactive_power)

par(mfrow = c(2, 2))

plot(date_time,power,type="l",xlab="",ylab="Global Active Power")
axis(side=2, at=seq(0,6,2),labels = TRUE)

plot(date_time,Volt,type="l",xlab="datetime",ylab="Voltage")
axis(side=2, at=seq(234,246,2),labels = TRUE)

plot(date_time,Sub_m1,type="l",xlab="",ylab="Energy sub metering")
lines(date_time,Sub_m2,col="red")
lines(date_time,data$Sub_metering_3,col="blue")
axis(side=2, at=seq(0,30,10),labels = TRUE)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red", "blue"),lty = 1, cex=0.8,bty="n")

plot(date_time,reactivepower,type="l",xlab="datetime",ylab="Global_Reactive_Power")
axis(side=2, at=seq(0,0.5,0.1),labels = TRUE)

png(file="C:/lilylo/plot4.png",width=480, height=480)
par(mfrow = c(2, 2))
plot(date_time,power,type="l",xlab="",ylab="Global Active Power")
axis(side=2, at=seq(0,6,2),labels = TRUE)
plot(date_time,Volt,type="l",xlab="datetime",ylab="Voltage")
axis(side=2, at=seq(234,246,2),labels = TRUE)
plot(date_time,Sub_m1,type="l",xlab="",ylab="Energy sub metering")
lines(date_time,Sub_m2,col="red")
lines(date_time,data$Sub_metering_3,col="blue")
axis(side=2, at=seq(0,30,10),labels = TRUE)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red", "blue"),lty = 1, cex=0.8,bty="n")
plot(date_time,reactivepower,type="l",xlab="datetime",ylab="Global_Reactive_Power")
axis(side=2, at=seq(0,0.5,0.1),labels = TRUE)
dev.off()
