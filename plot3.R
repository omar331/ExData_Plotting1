# This script assumes the necessary dataset is already loaded.
# plot1.R must be executed previously.

# remove missing values and assure the values are numeric
submet1 <- subset(energy0, !is.na(Sub_metering_1) )
submet2 <- subset(energy0, !is.na(Sub_metering_2) )
submet3 <- subset(energy0, !is.na(Sub_metering_3) )


plot3 = function() {
  with(submet1, plot(When, Sub_metering_1, type="l", col="purple", ylab="Energy Sub metering") )
  
  with(submet2, points(When, Sub_metering_2, type="l", col="red") )
  with(submet3, points(When, Sub_metering_3, type="l", col="blue") )
  
  legend("topright", lty=c(1,1,1), lwd=c(2.5,2.5,2.5), col=c("purple", "red", "blue"), legend=c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
}

png("plot3.png", width=480, height=480)
plot3()
dev.off()

