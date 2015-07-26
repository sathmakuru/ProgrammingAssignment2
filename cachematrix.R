## Put comments here that give an overall description of what your
## functions do

## the below function set the values of matrix and get the values of matrix, set the inverse of matrix 
##and get the inverse of matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}




## the below function checks if the inverse of matrix is already cached if the values of the matrix are fixed.
## if the values of the matrix are not fixed it will calculate the inverse of matrix and set the computed matrix 
## values in the cache.

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
