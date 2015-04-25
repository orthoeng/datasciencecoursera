## Put comments here that give an overall description of what your
## functions do

## In this example we introduce the <<- operator which can be used to assign
## a value to an object in an environment that is different from the current
## environment. Below are two functions that are used to create a special object
## that stores a numeric matrix and cache's its inverse.

## The "makeCacheMatrix" function creates a special "matrix" object
## that can cache its inverse.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    ## store NULL
    inv = NULL
    set = function(y) {
        # use `<<-` to assign a value to an object in an environment
        # different from the current environment.
        x <<- y
        inv <<- NULL
    }
    get = function() x
    setinv = function(inverse) inv <<- inverse
    getinv = function() inv
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}

}

## Write a short comment describing this function
## The "cacheSolve" function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already
## been calculated (and the matrix has not changed), then the
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## @x: output of makeCacheMatrix()
    ## return: inverse of the original matrix input to makeCacheMatrix()
    
    inv = x$getinv()
    
    # if the inverse has already been calculated
    if (!is.null(inv)){
        # get it from the cache and skips the computation.
        message("getting cached data")
        return(inv)
    }
    
    # otherwise, calculates the inverse
    mat.data = x$get()
    inv = solve(mat.data, ...)
    
    # sets the value of the inverse in the cache via the setinv function.
    x$setinv(inv)
    
}


 return(inv)
}