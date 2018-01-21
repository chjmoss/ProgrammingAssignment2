## Pair of functions that allows for creating a cache of matrix inverse calcuations

## a list of functions that retrieve and set both the original matrix and it's inverse
makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL 
      set <- function(y){
        x<<- y
        inv<<- NULL
        
      }
      get <-  function ()  x
      setinverse <- function(solve)  inv<<- solve
      getinverse <- function() inv
     
        
      list(set=set,get=get,setinverse=setinverse, getinverse=getinverse)
}





## Takes a matrix as input. Retrieves its inverse from cache if it exists, otherwise calcuates and stores
## result to cache. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<- x$getinverse()
 
  if(!is.null(inv)){
    message("Data is cached")
    return(inv)
  }
  data <- x$get()
  inv<-solve(data,...)
  x$setinverse(inv)
  inv
  
}

 

