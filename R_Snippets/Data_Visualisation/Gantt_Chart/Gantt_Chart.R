# Gantt Chart Plotter in R
#
# Adam Fletcher
#
# 10 JUL 18


# References and Tools:
# https://davetang.org/muse/2017/02/03/gantt-chart-using-r/

#MORE ADVANCED GANTT CHART @ https://stackoverflow.com/questions/3550341/gantt-charts-with-r

### Load/Install Dependencies

if (!require("ggplot2")) {
  install.packages("ggplot2", dependencies = TRUE)
  library(ggplot2)
}

if (!require("RColorBrewer")) {
  install.packages("RColorBrewer", dependencies = TRUE)
  library(RColorBrewer)
}

if (!require("reshape2")) {
  install.packages("reshape2", dependencies = TRUE)
  library(reshape2)
}

rm(list = ls()) # Clear workspace


### Making Task Vectors

# ADD A SELECT FILE FUNCTION!!

#GENERATES A WARNING!!!
tasks.df <- read.csv("Gantt_Chart_Input_Template.csv")
# Warning message:
#   In read.table(file = file, header = header, sep = sep, quote = quote,  :
#                   incomplete final line found by readTableHeader on 'Gantt_Chart_Input_Template.csv'

tasks.df$Task.Name <- factor(tasks.df$Task.Name, levels = tasks.df$Task.Name)
tasks.df$Start.Date <- as.Date(tasks.df$Start.Date, format = "%d/%m/%y")
tasks.df$End.Date <- as.Date(tasks.df$End.Date, format = "%d/%m/%y")
tasks.melted <- melt(tasks.df, measure.vars = c('Start.Date', 'End.Date'))


### Create the Plot

# starting date to begin plot
start_date <- as.Date('2018-07-01')

ggplot(tasks.melted, aes(value, Task.Name)) + 
  geom_line(size = 10) +
  labs(x = '', y = '', title = 'Gantt chart using ggplot2') +
  theme_bw(base_size = 12) +   #Change this bit for colours, I presume!!
  theme(plot.title = element_text(hjust = 0.5),
        panel.grid.major.x = element_line(colour="black", linetype = "dashed"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(angle = 0)) +
  scale_x_date(date_labels = "%Y %b", limits = c(start_date, NA), date_breaks = '3 months')

# see ?strptime if you want your date in a different format
# see http://docs.ggplot2.org/current/scale_date.html if you want to adjust the x-axis
