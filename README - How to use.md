### How To Use
## Following example is depicted of how to use
This function works for a square matrix that is invertible
So please give matrix that is invertible

STEP - 1
x <- makeCacheMatrix(x = matrix(1:4,nrow=2,ncol=2))
This will create the special matrix x

STEP - 2
cacheSolve(x)
This will check if inverse of x exists
If not then it will compute the inverse and store it in cache

STEP - 3
If second time same call i.e. cacheSolve(x) is given without changing the matrix then we get following output:

>cacheSolve(x)
getting cached data
	[,1]  [,2]
[1,] 	  -2   1.5
[2,]	   1  -0.5

