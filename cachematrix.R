## Put comments here that give an overall description of what your
## functions do

## Theses functions are used for calculating inverse of a matrix
## and cache that result for futher uses.

## Write a short comment describing this function

## Create a matrix that contains functions to set/get the value of
## the matrix and set/get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y) {
        x <<- y
        s <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) s <<- solve
    getsolve <- function() s
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    s <- x$getsolve()
    if (!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setsolve(s)
    s
}
