## Put comments here that give an overall description of what your
## functions do

## This function will calculate the matrix inverse and
## cache the result


## Write a short comment describing this function

## Create the object that contains the cache as well
## as the set and get inverse function

makeCacheMatrix <- function(x = matrix()) {       # input is a matrix
  m <- NULL                                       # m is the inverse, reset everytime makematrix is called
  set <- function (y) {                           # cache the inverse
    x <<- y
    m <<- NULL
  }
  get <- function () x                            # return the original matrix
  setinverse <- function (solve) m <<- solve      # called the "solve" function to compute the inverse and store the value
  getinverse <- function () m                     # return the value 
  
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  # this is a list with the internal functions
}


## Write a short comment describing this function

## This function will calculate the inverse and store its value
## also it will returh the inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()                       ## access the x object and gets the inverse
  if(!is.null(m)){
    message("Getting cache data")           ## if the inverse was already calculated, return the cache
    return(m)
  }
  data <- x$get()                           ## get the matrix
  m <- solve(data)                          ## calculate the inverse
  x$setinverse(m)                           ## store the inverse matrix 
  m                                         ## return the inverse
  
}
