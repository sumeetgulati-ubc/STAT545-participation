#comments in R need #
#This my exploration with R. Sept 5th, 2019
number <- 35-7
#note the <- sign, read this arrow as “gets”, and works like an equal sign.
##look in environment to see that a variable number has been assigned this value
newnumber <- number*2
###not clear to me how this environment can be easily saved as a dataset
times <- c(60, 40, 33, 15, 20, 55, 35)
#that created a vector of travel times for those in class.
##the function c() creates a vector.
#creating a time in hours
times_hr <- times/60
mean(times)
sqrt(times)
range(times)
#to check if something is true of false try this (logicals)
times < 20
#or 
times==20
times<50 & times>20
times<20 | times>50
i <- which(times<30)
j <- any(times>30) #this is an inline comment
all(times>30)
sum(times<30)
#subsetting
times[3] #returns the third element of the vector
times[-3] #returns all the elements except the third
times[c(2,4)] #will return the 2nd and 4th elements of the vector
#if we wrote times[2,4] it will assume that times is a matrix and look for
##the element in the second row and fourth column and will give you an error
times[1:5] #will give you the first five elements
times[times<30] #will give us a subset of elements that are less than 30
#to cap entries that are too large---remove outliers and replace them with 50
times[times>50]<-50
#adding na (not available) to a vector
times[8] <-NA
mean(times)
#reading documentation
?mean
#removing NAs
mean(times, na.rm=TRUE)
#trimming is for robustness
mean(times,0, TRUE)
mean(times,0.5, TRUE)
#dataframes
mtcars
##this printed the dataframe mtcars, a matrix of data with vectors of equal dimentions
str(mtcars) #gives you the structure of the data
names(mtcars) #gives you the names of variables
summary(mtcars)
#to extract columns from a matrix
mtcars$cyl
