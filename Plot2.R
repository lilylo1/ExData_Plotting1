household_power_consumption <- read.csv("C:/lilylo/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
view(household_power_consumption)

data<-subset(household_power_consumption,as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-01")|as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-02"))

date_time<-strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")

power<-as.numeric(data$Global_active_power)

plot(date_time,power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

png(file="C:/lilylo/plot2.png",width=480, height=480)

plot(date_time,power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()

