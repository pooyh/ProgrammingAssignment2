## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	#init inverse as null
	inv<-NULL
	
	#function to set value
	setMatrix <-function(y){ 
		x<<- y
		m <<- NULL
	}
	#function to get matrix
	getMatrix <- function()x 
	
	#function to set inverse
	setInverse <- function(inverse) inv <<- inverse
	
	#function to get inverse
	getInverse <- function() inv
	list(setMatrix=setMatrix, getMatrix=getMatrix, setInverse=setInverse, getInverse=getInverse)
	
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
