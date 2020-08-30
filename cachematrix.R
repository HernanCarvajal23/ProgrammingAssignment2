## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Both functions provide the process of how to get a matrix defined by the user, and how to get the matrix inverse 
## the first function defines the matrix and stablish the parameters by which the other function will solve the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  Inverse <- function(solveMatrix) inv <<- solveMatrix
  Inverse <- function() inv
  list(set = set, get = get, Inverse = Inverse, Inverse = Inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

y<-matrix(1:4 , nrow = 2, ncol = 2)
p<-makeCacheMatrix(y)
p$get()
p$Inverse()
cacheSolve(p)
