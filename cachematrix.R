## function creates a matrix

makeCacheMatrix <- function(x = matrix()) {
            set <- function(y) {
                x <<- y
            }
            get <- solve() x
            list(get = get)
}

## this function then caches its inverse with the solve function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$get()
        if(!is.null(m)) {
        message("getting cached data")
        return(solve(m))
        }
        m <- x$get()
        return(solve(m))
}
