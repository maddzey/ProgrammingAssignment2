## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Create a special matrix object with vital funtions to return, get, set value and inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setData <- function(y) {
    x <<- y
    m <<- NULL
  }
  getData <- function() x
  setInverse <- function(mean) m <<- mean
  getInverse <- function() m
  list(setData = setData, getData = getData,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
## Check if the special matrix object already has a computed inverse, return if exist
## Calculate the inverse and store in the object if doesnt exist already
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)) {
    message("getting cached data")
    return(minvMatrix)
  }
  data <- x$getData()
  invMatrix <- solve(data, ...)
  x$setInverse(invMatrix)
  invMatrix

}
