#R is case sensitive

2+2 #Defining a value
x <- 2+2 #storing a value
x

a #can't define a character variable like this
"a" #A character variable must be defined in quotations
a <- 'a'

#valid variable names(only takes letters, numbers, . , _)
var_name2. <- 1
.var_name <- 2 #dot should not be followed by a number
var.name <- 3

#invalid variable names
2var_name <- 4 #cannot start with a number
.2var_name <- 5 #dot folllowed by a number is invalid
_var_name <- 6 #cannot start with underscore
var_name% <- 7#only dot and underscore allowed


#Data types: numeric, integer,logical, complex, character

a <- 1
class(a)

#Defining an integer
 a <- 1L
 class(a)
x <- 1.2L
class(x) #overwrites the type of class

#sequence
s <- 1:10
s
s <- seq(1,10,2)
s

#defining a complex number
x <- 1+2i
class(x)
Re(x) #print real value
Im(x) #print img value

#defining a character value
x <- 'a'
class(x)

LETTERS #print letters A to Z
letters #print a to z

x <- LETTERS[1:6]
x
y <- letters[4:10]
y

#Defining logical value
a <- TRUE
b <- FALSE
class(a)
class(b)

#Defining a vector
x <- c(1,2,4,5,7,8)
x
class(x)
is.vector(x)
x[1]
x[c(1,5)]
x[1:4]

#Defining a matrix
x <- matrix(c(2,5,3,4,9,8), nrow=2)
x
y <- matrix(c(9,5,6,7,4,3,2,1), ncol=2, byrow=TRUE)
y
z <- matrix(c(1:5), nrow=5, ncol=5, byrow = T, dimnames = list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
z
z[1,]
z[2,3]
z[,3]
z[c(1,3,5),5]
rownames(z) <- c('row1', 'row2', 'row3', 'row4', 'row5')
colnames(z) <- c('col1', 'col2', 'col3', 'col4', 'col5')
z

#Define array
#multi dimensional(x,y,z....)
arr <- array(c(1:6),dim = c(2,4,3))
arr[,,1]
arr[1,,3]

#Define a list
List <- list(Id=c(1,2,3,4), name=c('A','B','C','D'), marks=c(4,6,5,7))
List2 <- list(List,arr)
List2[2]
class(List)

#Data Frame
DF <- data.frame(Id=c(1,2,3,4), name=c('D','E','F','G'), marks=c(1.5,2.4,1.7,3))
DF[,2]
DF$marks
DF$Id[2]
DF1 <- data.frame(Id=c(5,6,7,8), name=c('H','I','J','K'), marks=c(2.5,2.1,1.5,1))
rbind(DF,DF1)
DF2 <- data.frame(gender=c('M','F','F','M'), age=c(25,21,23,26), grade=c('D','B','C','A'))
cbind(DF,DF2)

#Factor
k <- c("red", "blue", "blue", "green", "red", "red")
class(k)
a <- factor(k)
a
class(a)

#Finding variables in environment
ls()
ls(pattern = "c")
ls(all.names = TRUE)

#Deleting variables
var <- 1
ls(pattern = "var")
rm(list=ls(pattern="c"))
ls()

#Operations

#Arithmetic
a <- c(1,2,3,4)
b <- c(4,3,2,1)
c <- c(2,2,2,2)
a+b
a+b-c

#Relational
a>b
b<c
a==c
a[2]==c[2]
a>c

#Logical
x <- c(TRUE,FALSE,0,5)
y <- c(FALSE,FALSE,TRUE,TRUE)
!x
x&&y
x||y
x&y
TRUE %in% x

#matrix multiplication
v <- matrix(c(1,2,3,4),nrow=2,byrow=TRUE)
v
t(v) #transpose of v
w <- v %*% t(v)
w
