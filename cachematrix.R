## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }m
    get <- function() x
    setInverse <- function(j) i <<- j
    getInverse <- function() i
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if (!is.null(i)) {
        message("getting cached inverse")
        return(i)
    }
    data <- x$get()
    i <- if (det(x) == 0) {
        solve(data)
    }
    else {
        NULL
    }
    m$setInverse(i)
    i
}
