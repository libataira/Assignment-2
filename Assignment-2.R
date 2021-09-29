## Functions for caching a vector by its Matrix
## Pass the result of the makeCacheMean command to cacheSolve

makeCacheMean <- function(s = mean()) {
  inv <- NULL
  set <- function(t) {
    s <<- t
    inv <<- NULL
  }
  ## set mean to inverse
  data <- function() s
  resultinverse <- function(inverse) inv <<- inverse
  datainverse <- function() inv
  list(result = result, data = data,
       resultinverse = resultinverse,
       datainverse = datainverse)
}