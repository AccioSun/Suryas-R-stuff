getwd()
#add the table from the directory
x <- read.table("Assignment 6 dataset.txt", header = TRUE, sep=",")
#install pryr
install.packages("pryr")
library(pryr)
StudentAverage <- ddply(x, "Sex", transform, Grade.Average=mean(Grade))
write.table(StudentAverage, "Sorted Average", sep=",")
#this creates a table, y, with the new information.
iNames <- subset(x, grepl("i", x$Name, ignore.case=T))
write.table(iNames, "DataSubsetI", sep=",")