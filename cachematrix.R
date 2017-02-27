## Rather than having to calculate the inverse of a matrix over again, the results are 
## saved and can be referenced later when needed.

## This function accepts a matrix x as a parameter, otherwise it creates an empty one.
## Getters and setters are defined to retrieve and define values

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


## This function accepts a CacheMatrix object x created by makeCacheMatrix()
## and stores the calculated inverse in x.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    i <- x$getInverse()
    if (!is.null(i)) {
        message("getting cached inverse")
        return(i)
    }
    
    # some matrices are not invertible (ex. matrix(1:9, 3, 3))
    # if the determinant is 0, the matrix is invertible
    # calling solve on an invertible matrix will return an error
    data <- x$get()
    i <- if (det(data) != 0) {
        solve(data)
    }
    else {
        message("invertible matrix")
        NULL
    }
    
    m$setInverse(i)
    i
}
