#The makeCacheMatrix creates a special matrix object that can cache its inverse
#The cacheSolve computes the inverse of the special matrix returned by 
#the makeCacheMatrix.  If the inverse is already been computed then the 
#cacheSolve will retrieve the inverse from the cache

#makeCacheMatrix creates a special matrix object and can cache its inverse
#x is the matrix object and the inv is the inverse that will be cached
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  #set the matrix value
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  
  #cache the inverse of the matrix
  setinverse <- function(inverse) inv <<- inverse
  
  getinverse <- function() inv
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


#cacheSolve will check if the inverse for the matrix x exists
#If yes, then it will fetch that inverse
#If no, then it will compute the inverse and store it in cache
cacheSolve <- function(x, ...) {
  
  #get the inverse of the matrix
  inverse <- x$getinverse()
  #if inverse is not null then return the cached value of inverse
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  #we are here means cached inverse not found so...
  #get the matrix
  data <- x$get()
  #compute its inverse
  inverse <- solve(data)
  #cache the inverse value
  x$setinverse(inverse)
  ## Return a matrix that is the inverse of 'x'  
  inverse
}
