## This is a simple R scripts containing a couple of functions
## to cache the inverse of a matrix

## makeCacheMatrix creates a matrix object which then catches inverse

makeCacheMatrix <- function(a = matrix()) {
  i <- NULL
  setMatrix <- function(matrix){
    a<<- matrix
    i<<- NULL
    
  } 
  
  getMatrix <- function(){
    a
  }
  mInverse <- function(inverse){
    i<<- inverse
    
  }
  getInverse <- function(){
    i
  }
  list(set= setMatrix, get = getMatrix, setInverse = mInverse, getInverse = getInverse)
}


#This function returns the value of the inverse matrix of "a"
cacheSolve <- function(a, ...) {
  ## Return a matrix that is the inverse of 'a'
  mInv <- a$getInv()
  if(is.null(mInv)){
    message('The inverse is: ')
    message('***drums please***')
    data <- a$get()
    mInv <- solve(data)
    a$setInv(mInv)
    
  }else {
    message('The cached inverse is...')
  }
  
  mInv
}
