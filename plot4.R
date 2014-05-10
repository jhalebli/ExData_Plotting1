a <- read.csv("~/household_power_consumption.txt", sep=";", na.strings="?");
b <- subset(a, Date == "1/2/2007");
c <- subset(a, Date == "2/2/2007");
d <- rbind(b,c);
e <- strptime(paste(d$Date, d$Time),"%d/%m/%Y %H:%M:%S");
row.names(d) <- NULL;
png("plot4.png")
par(mfrow=c(2,2));
plot(e, d$Global_active_power, ylab="Global Active Power", xlab= "", type="l");
plot(e, d$Voltage, ylab="Voltage", xlab="datetime",  type="l");
plot(e, d$Sub_metering_1, col="Black", ylab="Energy sub metering", xlab = "",type="l");
lines(e, d$Sub_metering_2, col="Red");
lines(e, d$Sub_metering_3, col="Blue");
legend("topright", lty=1, col=c("black", "red", "blue"), bty="n", legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"));
plot(e, d$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l");
dev.off();