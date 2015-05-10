# download and unzip the dataset
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="energy.zip", method="curl")
unzip("energy.zip")

energy_data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?", stringsAsFactors=FALSE)

# and subset only the data we are interested in 
energy0 <- subset(energy_data, Date=="1/2/2007" | Date=="2/2/2007")

# add a new column "When" containing unified Date and Time
energy0$When <- strptime(paste(energy0$Date,energy0$Time), "%d/%m/%Y %H:%M:%S")

energy1 <- energy0
energy1 <- subset(energy1, !is.na(Global_active_power) )



# Global active Power
energy1.Global_active_power <- as.numeric(as.vector(energy1$Global_active_power))

#
#  ---> function for plotting the graphics
#
plot1 = function() {
  hist(energy1.Global_active_power, col="orange", main="Global Active Power", xlab="Global Active Power (kilowatts)")
}

png("plot1.png", width=480, height=480)
plot1()
dev.off()
