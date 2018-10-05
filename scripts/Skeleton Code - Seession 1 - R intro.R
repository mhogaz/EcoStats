#Beginnings - Always comment your code!

# is how you do it


#----------------------------
#adding dahses after the # sign puts a break in the code so you can subset your script and work on different pieces.


#----------------------------
#useful components
#There are three types of values in R: 1) character/string (I.E "Tonka Truck") 2) Numeric (I.E 3), Logical (I.E True)

object_numeric <- 3

#vectors

vector <- c(1, 2, 3, 4)


vetor3 <- c(1,2,object_numeric,4)

#Matricies 


v1 <- c(1:5)
v2 <-  c(4,2,6,9,7)
v3 <- c(10, 200, 400, 800, 1000)

matrix2 <- matrix(data=c(v1,v2, v3), nrow = 10, ncol = 3, byrow = F, dimnames = NULL)

#

#data frames - this is was most of us will be primarily using.

df <- as.data.frame(1:6, row.names = c("Julia", "B", "C", "D", "E", "F"))

df$m <- 1.2

df$b <- 4

df$x <- c(1:6)

df$y <- df$m * df$x + df$b

df$logy <- log(df$y)


# first is the rows of a data frame follow comma for columns

#Adding rows

#

#objects and data frames are case sensitive

#summary of the data frame -

#vs

fake <- read.csv(C:/Users/mhoga/Box Sync/Mollie Documents/Cohort_stats_class/data/FakeData)

#----------------------------
#library with package and their function
#What the hell is a package and a function?


#installing packages - here are some important ones



#Clearing out the list if you have things you don't need anymore
