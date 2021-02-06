#Loops in R
#while loop
while(test_expression)
{
  statement     #Syntax
}

i <- -1
while(i<6)
{
  print(i)
i=i+1
}

#repeat loop
repeat
{
  commands
  if(condition)
  {
    break      #Syntax
  }
}
i <- 1
repeat
{
  print(i)
  i=i+1
  if(i>5)
  {break
    }
}

#For Loop
for(value in vector){     #syntax
  statements
}
v <- LETTERS[1:6]
for(i in v)
{
  print(i)
}

for(i in v)
{
  if(i=="D")   #skip D
  {
    next
  }
  print(i)
}

#Functions

new.function <- function(a){
  for(i in 1:a){
    print(i^2)
  }
}
new.function(6) #calling a function

new.function <- function(){
  for(i in 1:5){
    print(i^2)
  }
}
new.function() #callin without an argument

new.function <- function(a=3,b=4){

  print(a*b)
  
}
new.function() #calling function with default arguments
new.function(5,6)#new arguments

new.function <- function(a,b){
    print(a^2)
    print(b/10)
}
new.function(6,5)

getwd()

data=read.csv('C:/Users/Admin/Documents/Cars.csv')
data

install.packages("dplyr")
library(dyplr)
data(mtcars)
View(mtcars)
?mtcars
head(mtcars)
head(mtcars,3)
tail(mtcars)
str(mtcars)
summary(mtcars)

select(mtcars,cyl,gear)
head(select(mtcars,starts_with("c")))
arrange(mtcars,cyl)
arrange(select(mtcars,"cyl","gear"),cyl)

rowSums(mtcars)
colSums(mtcars)
rowMeans(mtcars)
colMeans(mtcars)

range(mtcars$mpg)
var(mtcars)
var(mtcars$cyl)
sd(mtcars$mpg)
unique(mtcars$mpg)

Range <- function(x){max(x,na.rm=T)-min(x,na.rm=T)}
Range(mtcars$mpg)
Range(mtcars$disp)
Range(mtcars$wt)
