install.packages("pryr`")
library(pryr)
people <- data.frame(
  name = c("Jake", "Amy", "Ray"),
  record = c(21, 20, 15),
  hair = c("brown", "black", "none")
)
otype(people)
#because people is an S3 object, you can assign a generic function to it.
mean(people$record)
#S3 can be assigned to my data set because my data set is already an S3
setClass("employee",slots = list(name = "character", record = "numeric", hair = "character"))
Jake <- new("employee", name = "Jake", record = 21, hair = "brown")
Amy <- new("employee", name = "Amy", record = 20, hair = "black")
Ray <- new("employee", name = "Ray", record = 15, hair = "none")
#In order to be assign an S4 to the dataset, the dataset must be rewritten as an S4