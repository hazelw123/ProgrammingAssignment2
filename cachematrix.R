## Matrix X is input into makeCacheMatrix function, which returns a list of 4 functions

## calculates the inverse of matrix x

makeCacheMatrix <- function(x = matrix()) {
      j <- NULL
      set <- function(y){
            x <<- y
            j <<- NULL
      }
      get <- function()x
      setInverse <- function(inverse) j <<- inverse
      getInverse <- function() j 
      list(set = set, get = get, 
           setInverse = setInverse, 
           getInverse = getInverse)
}



## Tests if the inverse has been calculated - skips if it's already been done, 
##if not it gets the vale of x from the list above and calcualtes the inverse, stores it under j

cacheSolve <- function(x, ...) {
      
      j <- x$getInverse()
      if(!is.null(j)){
            message("getting cached data")
            return(j)
      }
      mat <- x$get()
      j <- solve(mat,...)
      x$setInverse(j)
      j
