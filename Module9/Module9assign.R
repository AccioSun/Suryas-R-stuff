#first, you must call the data
mydata <- read.csv("aircondit7.csv", header=T)
#We now create a basic graph
basicgraph <- plot(mydata, type="o")
#we must then load in the Lattice package
library(lattice)
#the first table doesn't have the right amount of variables, so I must introduce another table.
datascatter <- read.csv("cav.csv", header=T)
scatteredcav <- xyplot(x ~ y, datascatter)
#To use the similar ggplot function, we need to install ggplot2
library(ggplot2)
ggscatter <- ggplot(datascatter, aes(x,y)) + geom_point()