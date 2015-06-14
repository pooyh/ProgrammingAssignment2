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
	#calling getInverse func
	inv <- x$getInverse()
	
	#if inv is not an empty matrix then just return it
	if(!is.null(inv)){
		message("getting cached matrix")
		return (inv)
	}
	
	#else get the cached matrix
	data<-x$getMatrix()
	inv<-solve(data) #solve the matrix
	x$setInverse(inv)#set it to the obj
	inv#return the result
	
}

test <- matrix(runif(9,1,100),3,3)
testCached <- makeCacheMatrix(test)
testInv <- cacheSolve(testCached)
testInv <- cacheSolve(testCached)
testInv <- cacheSolve(testCached)
testInv <- cacheSolve(testCached)
testInv <- cacheSolve(testCached)