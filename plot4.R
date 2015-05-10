voltage <- subset(energy1, !is.na(Voltage) )


global_reactive_power <- subset(energy1, !is.na(Global_reactive_power) )


plotVoltage = function() {
  with(voltage, plot(When, Voltage, type="l", ylab="Voltage"), xlab="Voltage")
}


plotReactive = function() {
  with(global_reactive_power, plot(When, Global_reactive_power, type="l", ylab="Global Reactive Power"), xlab="When")
}




png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot2()
plotVoltage()
plot3()
plotReactive()
dev.off()