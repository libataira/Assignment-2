## Functions for caching a vector by its Mean
## Use: Pass the result of the makeCacheMean command to cacheSolve 

#' Util function that set the data to solve for mean
#' @param s is the mean
#' examples
#' s = makeCacheMean(mean(rnorm(4), 2, 2))
#' s$set(mean(rnorm(9), 3, 3))
makeCacheMean <- function(s = mean()) {
  # todo error if s is not a mean
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