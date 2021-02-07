## Matrix X is input into makeCacheMatrix function, which returns a list of 4 functions


makeCacheMatrix <- function(x = matrix()) {
      a <- NULL
      set <- function(y){
            x <<- y
            a <<- NULL
      }
      get <- function()x
      setInverse <- function(inverse) a <<- inverse
      getInverse <- function() a 
      list(set = set, get = get, 
           setInverse = setInverse, 
           getInverse = getInverse)
}



## Tests if the inverse has been calculated - skips if it's already been done, 
##if not it gets the vale of x from the list above and calculates the inverse, stores it under a

cacheSolve <- function(x, ...) {
      
      a <- x$getInverse()
      if(!is.null(a)){
            message("getting cached data")
            return(j)
      }
      mat <- x$get()
      a <- solve(mat,...)
      x$setInverse(j)
      a
