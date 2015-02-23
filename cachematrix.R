## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  y <<- NULL
  x <<- x
  
  inv <- function() {
    if (!identical(x, y)) {
      y <<- solve(x)
    }
    return(y)
  } 
  
  get <- function() x
  
  list(inv = inv, get = get)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        
  ## Return a matrix that is the inverse of 'x'
  x$inv()
  
}
