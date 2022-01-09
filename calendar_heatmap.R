#calender chart
rm(list=ls())
#install package
#install.packages("calendR")

#library
library(calendR)

#working directory
setwd("G:/graph-gallery")

#loading rainfall data for 2021
rain<-read.csv("rain2021.csv", na.strings="NA", header=T)
calendR(year = 2021,
        title = "Daily rainfall in #my city in 2021",  # Change the title
        title.size = 20,                  # Font size of the title
        title.col = 1,                    # Color of the title
        #weeknames = c("S", "M", "T", "W", "T", "F", "S"), # Change week day names
        #start = "M",                     # Start the week on Monday
        col = "#f2f2f2",                  # Color of the lines of the calendar
        lwd = 1,                          # Width of the lines of the calendar
        lty = 1,                          # Line type of the lines of the calendar
        mbg.col = 4,                      # Background color of the month names
        months.col = "white",             # Color of the text of the month names
        font.family = "mono",             # Font family of all the texts                 
        font.style = "bold",              # Font style of the texts except the subtitle
        weeknames.col = "black",          # Color of the names of the days of the week
        days.col = 1,                     # Color of the number of the days
        day.size = 3.5,                   # Size of the number of days
        special.days = rain$rainfall,     # Vector of the same length as the number of days of the year
        gradient = TRUE,                  # Set gradient = TRUE to create the heatmap
        special.col = "blue",             # Color of the gradient for the highest value
        legend.pos = "right",             # Position of the legend
        legend.title = "mm",              # Title of the legend
        orientation = "portrait")         #orientation of the  map
