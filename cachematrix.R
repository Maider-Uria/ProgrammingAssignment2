##These functions take a matrix and calculate its inverse, storing it in a cache for future use.

## functions do: makeCacheMatrix
##               cacheSolve 

## makeCacheMatrix function creates a special object that store a matrix and its inverse
# Provides a method to set and get the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inversa<-NULL
  set <- function(y){
    x <<- y
    inversa <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inversa <<- inverse
  getInverse <- function() inversa
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
