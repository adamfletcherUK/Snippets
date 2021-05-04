requiredPackages <- c("tidyverse", "RColorBrewer", "reshape2")

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)

setwd("~/Documents/GitHub/Private_General/R_scripts/CEP0351_SampleInfo_Mkdwn")

LIMS.df <- read_csv("CEP0351_LIMS_Summary.csv")
LIMS.df$`Visit Date` <- as.POSIXct(LIMS.df$`Visit Date`, format = "%d/%m/%Y")
LIMS.df$Visit_weekday <- weekdays(LIMS.df$`Visit Date`)

#Turning Login day into date is hard as year displays as 0017 not 2017.
LIMS.df$login_day <- substr(LIMS.df$`Login date/ Time`, 1, 2)
LIMS.df$login_month <- substr(LIMS.df$`Login date/ Time`, 4, 5)
LIMS.df$login_year <- substr(LIMS.df$`Login date/ Time`, 7, 8)
LIMS.df$login_year <- paste("20", LIMS.df$login_year, sep ="")
LIMS.df$login_date <- paste(LIMS.df$login_year, LIMS.df$login_month, LIMS.df$login_day, sep="-")
LIMS.df$login_date <- as.POSIXct(LIMS.df$login_date)
LIMS.df$login_weekday <- weekdays(LIMS.df$login_date)
LIMS.df$time_in_transit <- (LIMS.df$login_date - LIMS.df$`Visit Date`) + 1

# Add Vist and Login Time?? Is that needed??

# Pulling out weekday of shipping and number of days it took to arrive at Manchester
shipment.time.df <- subset(LIMS.df, `Sample Type` == "BLD_C_SAVE")
shipment.time.df <- shipment.time.df[, c(3, 13, 19)]
shipment.time.df$start = 1
time.gantt.df <- melt(shipment.time.df, measure.vars = c('start', 'time_in_transit'))

#Adjusts the value based on the weekday for plotting the Gantt Chart
time.gantt.df$Adjust_value <- time.gantt.df$value

for (i in 1:nrow(time.gantt.df)){
  if (time.gantt.df$Visit_weekday[i] == "Tuesday") {
    time.gantt.df$Adjust_value[i] <- time.gantt.df$value[i] + 1
    }
}
for (i in 1:nrow(time.gantt.df)){
  if (time.gantt.df$Visit_weekday[i] == "Wednesday") {
    time.gantt.df$Adjust_value[i] <- time.gantt.df$value[i] + 2
  }
}
for (i in 1:nrow(time.gantt.df)){
  if (time.gantt.df$Visit_weekday[i] == "Thursday") {
    time.gantt.df$Adjust_value[i] <- time.gantt.df$value[i] + 3
  }
}
for (i in 1:nrow(time.gantt.df)){
  if (time.gantt.df$Visit_weekday[i] == "Friday") {
    time.gantt.df$Adjust_value[i] <- time.gantt.df$value[i] + 4
  }
}
for (i in 1:nrow(time.gantt.df)){
  if (time.gantt.df$Visit_weekday[i] == "Saturday") {
    time.gantt.df$Adjust_value[i] <- time.gantt.df$value[i] + 5
  }
}
for (i in 1:nrow(time.gantt.df)){
  if (time.gantt.df$Visit_weekday[i] == "Sunday") {
    time.gantt.df$Adjust_value[i] <- time.gantt.df$value[i] + 6
  }
}

#Turns the adjusted value into a date from the 0n-01-2018 (1st Jan 2018 = Monday)
time.gantt.df$plotdate <- paste("2018-01-0", time.gantt.df$Adjust_value, sep ="")
time.gantt.df$plotdate <- as.Date(time.gantt.df$plotdate)

#Plots the Gantt Chart
start_date <- as.Date('2018-01-01')
ggplot(time.gantt.df, aes(plotdate, Subject, colour = Visit_weekday)) + 
  geom_line(size = 10, show.legend = FALSE) +
  labs(x = 'Weekday', y = 'Subject', title = 'Shipping and Arrival Times') +
  theme_bw(base_size = 12) +
  scale_x_date(date_breaks = "2 days", date_minor_breaks = "1 day", date_labels = "%A")
