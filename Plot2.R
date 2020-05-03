household_power_consumption <- read.csv("C:/lilylo/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
date_time<-strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
power<-as.numeric(data$Global_active_power)
plot(date_time,power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
png(file="C:/lilylo/plot2.png",width=480, height=480)
plot(date_time,power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

