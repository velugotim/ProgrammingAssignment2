## The first function creates a cache of the inverse of a given matrix and the second function checks if there is a cache that exists and returns it. 
## If cache doesn't exist it calculates the inverse of the matrix and returns it.

## A function to create a new matrix that can cache the inverse of a given matrix

makeCacheMatrix <- function(x = matrix()) {
	inverseMatrix <- NULL
	set <- function(y) {
		x <<- y
		inverseMatrix <<- NULL
	}
	get <- function () x
	setInverse <- function(solveMatrix) inv <<- solveMatrix
	getInverse <- function() inverseMatrix
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)

}


## A function to create the inverse of the new matrix returned by the function "makeCacheMatrix" above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse()
	if(!is.null(inverseMatrix)){
		message("getting cached data")
		return(inverseMatrix)
	}
	data <-x$get()
	inverseMatrix <- solve(data)
	x$setInverse(inverseMatrix)
	inverseMatrix
}
