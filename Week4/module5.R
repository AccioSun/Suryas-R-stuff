A <- matrix(1:100, nrow=6)
B <- matrix(1:1000, nrow=6)
#The Solve() function only works on square matrices
#I now need to add the MASS library so I can use the ginv function to invert a non-square matrix.
library(MASS)
invA <- ginv(A)
invB <- ginv(B)
#Unfortunately, non-square matrices do not have determinants.
#I have to repeat this process on a square matrix
C <- matrix(1:100, nrow=10)
det(C)