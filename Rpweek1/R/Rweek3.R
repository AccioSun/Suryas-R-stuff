Name <- c("Jeb", "Donald", "Ted","Marco", "Carly", "Hillary", "Berine")
ABCresults <- c(4, 62, 51, 21, 2, 14, 15)
CBSresults <- c(12, 75, 43, 19, 1, 21, 19)
results <- cbind(Name, ABCresults, CBSresults)
results
results.df <- data.frame(Name, ABCresults, CBSresults)
colMeans(results.df[,2:3])
