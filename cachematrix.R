## write an R function is able to cache potentially time-consuming computations. 


## Save original data

makeCacheMatrix <- function(x = matrix()) {
        m <- matrix()
        set <- function(y){
               x <<-y
                m<<-matrix()}
        get <- function() x
        setinverse <- function (Inverse) m <<-Inverse
        getinverse <-funtion() m
        list(set=set, get=get,getinverse=getinverse,setinverse=setinverse)
        
}


## Cache inversematrix

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
                }
        data <- x$get()
        m <- Solve(data,...)
        x$setinverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
