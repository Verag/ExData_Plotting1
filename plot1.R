## Read the data into a variable df.

df <- read.table("~/Exploratory data analysis/household_power_consumption.txt",
header=TRUE, sep=";", as.is=TRUE, na.strings="?" )

## Subset the variable df. We are only interest inthe dates 1/2/2007 and 2/2/2007.

gooddf <- subset(df,df$Date %in% c("1/2/2007, 2/2/2007")

## Open the graphic device. 

png (filename ="plot1.png",width = 480, height =480)

## Plot the histogram 

hist(gooddf$Global_active_power,
     main ="Global Active Power",
     xlab ="Global Active Power (Kilowatts)",
     ylab ="Frequency",
     col ="red"
     ylim =c(0,1200))

## Close the graphic device

dev.off()

