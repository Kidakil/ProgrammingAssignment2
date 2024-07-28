makeCacheMatrix <- function(x = matrix())    
  mat <- NULL
  in_cache <- NULL
  
  setMatrix <- function(x) {
    mat <<- x
    in_cache <<- NULL
  }
  getInverse <- function() {
    if (is.null(in_cache)) {
      in_cache <<- solve(mat)
    }
    in_cache
  } 
  list(setMatrix = setMatrix, getInverse = getInverse)
}
cacheSolve <- function(x, ...) {
        in_cache <- x$getInverse()
        in_cache
}
