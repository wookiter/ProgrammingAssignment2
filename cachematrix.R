## Put comments here that give an overall description of what your
## functions do


## Write a short comment describing this function
# This function creates object with list of 4 functions to 
# 1. set matrix 
# 2. get matrix 
# 3. set inverse matrix
# 4. get inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  odwrotna <- NULL
       set <- function(y) {
             x <<- y
             odwrotna <<- NULL
         }
       get <- function() x
       setodwroc <- function(odwroc) odwrotna <<- odwroc
       getodwroc <- function() odwrotna
       list(set = set, get = get,
                       setodwroc = setodwroc,
                       getodwroc = getodwroc)
}


## Write a short comment describing this function
# This function calculates inverse matrix. If inverse matrix was calculated before, cached one is returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  odwrotna <- x$getodwroc()
  if(!is.null(odwrotna)) {
    message("getting cached data")
    return(odwrotna)
  }
  data <- x$get()
  odwrotna <- solve(data, ...)
  x$setodwroc(odwrotna)
  odwrotna
}
