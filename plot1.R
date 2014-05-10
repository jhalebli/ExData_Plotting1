a <- read.csv("~/household_power_consumption.txt", sep=";", na.strings="?");
b <- subset(a, Date == "1/2/2007");
c <- subset(a, Date == "2/2/2007");
d <- rbind(b,c);
row.names(d) <- NULL;
png("plot1.png")
hist(d$Global_active_power, col="Red", xlab="Global Active Power (kilowatts)", main = "Global Active Power");
dev.off();
