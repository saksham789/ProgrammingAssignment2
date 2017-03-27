## Put comments here that give an overall description of what your
## 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  set_inversematrix<-function(inversematrix){
    m<<- inversematrix 
  }
  get_inversematrix <- function() m
  list(set = set, get = get,
       setinv = set_inversematrix,
       getinv = get_inversematrix)
  
  

}


## 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m<-solve((matrix)%*%(matrix))
  x$setinv(m)
  m
  
  
}
