
setwd("C:/Users/Sangyoon Park/Desktop/Udacity_DAND/P1")

data <- read.csv("stroopdata.csv")

head(data)

# To set the appropriate range for the histogram
min(data)
max(data)

# Making a histogram
hist(data[,1], col=rgb(0,0,1,0.5), breaks=seq(from=8, to=36, by=2),
     xlab="Time", ylab="Frequency", main="Task Performance in Different Conditions")
hist(data[,2], col=rgb(1,0,0,0.5), breaks=seq(from=8, to=36, by=2), add=TRUE)
legend("topright", c("Congruent", "Incongruent"), col=c(rgb(0,0,1,0.5), rgb(1,0,0,0.5)), lwd=10)

# Making a box plot
boxplot(data[,1], data[,2],
        names=c("Congruent", "Incongruent"),
        col=c(rgb(0,0,1,0.5), rgb(1,0,0,0.5)),
        ylab="Time",
        main="Task Performance in Different Conditions")

# Adding a new column
data[,3] = data[,1] - data[,2]
names(data)[3] = "Difference"
head(data)

# To set the appropriate range for the histogram
min(data[,3])
max(data[,3])

# Making a histogram
hist(data[,3], breaks=seq(from=-22, to=0, by=2),
     xlab="Difference in Time", ylab="Frequency", 
     main="Performance Difference within Each Participant")

# Making a box plot
boxplot(data[,3],
        ylab="Time",
        main="Performance Difference within Each Participant")
