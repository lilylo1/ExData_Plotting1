household_power_consumption <- read.csv("C:/lilylo/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
view(household_power_consumption)

data<-subset(household_power_consumption,as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-01")|as.Date(household_power_consumption$Date,format="%d/%m/%Y")==("2007-02-02"))

power<-as.numeric(data$Global_active_power)

hist(power,main = "Global Active Power",xlab="Global Active Power (kilowatts)",breaks=11,col="red")

axis(side=1, at=seq(0,6,2),labels = TRUE)
axis(side=2, at=seq(0,1200,200),labels = TRUE)

png(file="C:/lilylo/plot1.png",width=480, height=480)
hist(power,main = "Global Active Power",xlab="Global Active Power (kilowatts)",breaks=11,col="red")
dev.off()
