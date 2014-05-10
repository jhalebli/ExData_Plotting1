a <- read.csv("~/household_power_consumption.txt", sep=";", na.strings="?");
b <- subset(a, Date == "1/2/2007");
c <- subset(a, Date == "2/2/2007");
d <- rbind(b,c);
row.names(d) <- NULL;
e <- strptime(paste(d$Date, d$Time),"%d/%m/%Y %H:%M:%S");
png("plot2.png");
plot(e, d$Global_active_power, ylab="Global Active Power (kilowatts)", xlab= "", type="l");
dev.off();
