setwd("C:\\Users\\IT24101350\\Desktop\\IT24101350")

#Importig the Data set
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

#View the file in a seperate window
fix(Delivery_Times )

#Attach the file into R
attach(Delivery_Times)

#Rename the column(if needded)
names(Delivery_Times)<- "Delivery_Time"

#Part 02
# Create histogram
histogram <- hist(Delivery_Time, 
                  main = "Histogram for Delivery Times", 
                  breaks = seq(20, 70, length = 10), 
                  right = FALSE, 
                  xlab = "Delivery Time (minutes)")
## Part 03

#Shape: Most of the data is grouped around a center point, and the values are evenly spread on both sides.

#Center: The majority of deliveries are clustered around the middle class intervals (approximately 35-55 minutes).

#Spread: The data is spread out fairly evenly on both sides of the center, forming a bell-like shape.

#Skew: There is no significant skewness; the pattern is not lopsided to the left or right.

#Outliers: There are no extreme outliers; all data points fit within the overall pattern of the distribution.



##Part 04
# Calculate cumulative frequencies
breaks <- histogram$breaks
cum_freq <- cumsum(histogram$counts)

# Create cumulative frequency polygon
new <- c(0, cum_freq[-length(cum_freq)])  # Prepend 0 and shift values
plot(breaks, c(new, cum_freq[length(cum_freq)]), 
     type = 'l', 
     main = "Cumulative Frequency Polygon for Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum_freq)))
points(breaks, c(new, cum_freq[length(cum_freq)]), pch = 16)

# Combine breaks and cumulative frequencies
cbind(Upper = breaks, CumFreq = c(new, cum_freq[length(cum_freq)]))