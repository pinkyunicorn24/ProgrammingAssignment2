## Put comments here that give an overall description of what your
## functions do

## This function helps make a matrix that can catch its inverse

makeCacheMatrix <- function(x = matrix(), ...) {
z <- NULL
set <- function(y){
  x <<- y
  z <<- NULL ##"<<-" assign a value to an object in an environment that is different from the current environment
}
get <- function() x
setinv <- function(inverse) z <<- inverse
getinv <- function() z
list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This function helps calculate the inverse of the matrix that returned by 
##above function
cacheSolve <- function(x, ...) {
  z <- x$getinv()
  
  ##If the inverse has already exist
  
  if(!is.null(z)){
    message("cached data")
    return(z)
  }
  s.data <- x$get()
  z <- solve(s.data,...)
  x$setinv(z)
    z
}

