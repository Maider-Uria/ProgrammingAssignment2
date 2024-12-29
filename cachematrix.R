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


## The cacheSolve function computes the inverse of a matrix, checking 
# if the inverse is already cached. If cached, it retrieves the inverse;ç
# if not, stores, and returns the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversa <- x$getInverse()
  if (!is.null(inversa)){
    return(inversa)
  }
  matrix <- x$get()
  inversa <- solve(mat,...)
  x$setInverse(inversa)
  inversa
}

