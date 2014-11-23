## These two functions invert a square matrix in a short time consuming using casch 

## makeCacheMatrix(x) is a function reads the 'x'.

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL       
        set <- function(y) {    
                x <<- y        
                s <<- NULL      
        }
        get <- function() x    
        setSolve <- function(solve) s <<- solve     
        getSolve <- function() s        
        list(set = set, get = get, 
             setSolve = setSolve,         
             getSolve = getSolve) 
        

}


## cacheSolve (x) function Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        s <- x$getSolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setSolve(s)
        s
}
