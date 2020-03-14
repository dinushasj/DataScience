x <- c(4, "a", TRUE)
class (x)

x <- c(1,3, 5) 
y <- c(3, 2, 10) 
cbind(x, y)

x <- list(2, "a", "b", TRUE)
x[[2]]
length (x[[2]])

x <- 1:4 
y <- 2:3
class(x + y)

x <- c(3, 5, 1, 10, 12, 6)
x[x == 0] <- 6
x
getwd()
?read.table
initial <- read.table("hw1_data.csv",header = TRUE, sep="," , nrows = 2)
initial
mydataset <-read.table("hw1_data.csv",header = TRUE, sep="," )
mydataset
nrow(mydataset)
mydataset$Ozone[47]

y=is.na (mydataset$Ozone)
nrow(y)
OzoneNANum<-0
ozoneNotNANum<-0
total<-0
for (i in 1: nrow(mydataset)){
  if (is.na(mydataset$Ozone[i])=="TRUE"){
    OzoneNANum=OzoneNANum+1
      next()
    }else{
      ozoneNotNANum=ozoneNotNANum+1
      total=total+mydataset$Ozone[i]
        next()
      }
}
OzoneNANum
MeanOzone=total/ozoneNotNANum
MeanOzone


maxOzoneMay<-0
for (i in 1: nrow(mydataset)){
  if (mydataset$Month[i]=="5"){
    if (is.na(mydataset$Ozone[i])=="FALSE" && mydataset$Ozone[i]>maxOzoneMay ){
      maxOzoneMay=mydataset$Ozone[i]
      next()
    }
    
    else{
      next()
    }
  }
  else{
    next()
  }
}
maxOzoneMay


cube <- function(x, n) {
  x^3
}
cube(3)


x <- 1:10
if(x > 5) {
  x <- 0
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

z <- 10
f(3)


x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y


h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}



l<-10
f<-function (m) {
  l <- 2
  l^2 + g(m)
}
g<-function(m) {
  m*l
}

f(3)
