## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i<<-NULL
  
  getinv<-function()
  {
    i
  }
  get<-function()
  {
    x
  }
  set<-function(inv)
  {
    i<<-inv
  }
  list(get=get,set=set,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
{
  i<-x$getinv()
  if(!is.null(i)) {           #if there is a cache
    message("getting cached data")
    return(i)                #just return the cache, no computation needed
  }
  data<-x$get()
  i<- solve(data)
  x$set(i)
  i
}
