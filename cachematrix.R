## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x
  setinverseMatrix <- function(inverse) inverseMatrix <<- inverse
  getinverseMatrix <- function() inverseMatrix
  list(set = set, get = get,
       setinverseMatrix = setinverseMatrix,
       getinverseMatrix = getinverseMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  inverseMatrix <- x$getinverseMatrix()
  if(!is.null(inverseMatrix)) {
    message("getting cached data")
    return(inverseMatrix)
  }
  data <- x$get()
  inverseMatrix <- solve(data)
  x$setinverseMatrix(inverseMatrix)
  inverseMatrix
        ## Return a matrix that is the inverse of 'x'
}
