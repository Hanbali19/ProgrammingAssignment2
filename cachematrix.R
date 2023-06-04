## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x) {
  inverse <- NULL
  
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setInverse <- function(inv) {
    inverse <<- inv
  }
  
  getInverse <- function() {
    inverse
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x) {
  inverse <- x$getInverse()
  
  if (!is.null(inverse)) {
    message("Getting cached result")
    return(inverse)
  }
  
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse
}

