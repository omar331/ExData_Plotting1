plot2 = function() {
  with(energy1, plot(When, Global_active_power, type="l", ylab="Global Active Power (kilowatts)"))
}


# This script assumes the necessary dataset is already loaded.
# plot1.R must be executed previously.
png("plot2.png", width=480, height=480)
plot2()
dev.off()