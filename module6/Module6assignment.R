A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)
A + B
A - B
#In order to build a diagonal that has varying values, I must set a Vector as the diagonal
diag(c(4,0,2,3))
#I set C to be an identity matrix with the diagonal 3
C <- diag(3,4)
#I replace the first row of the matrix with a new vector
C[,1] <- c(3,1,1,1)
#The replace function doesn't work with the column, so I need to transpose
D <- t(C)
#I replace the first row once again.
D[,1] <- c(3,2,2,2)