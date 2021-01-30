# Join (Merge) data frames (inner, outer, left, right) 
df1 = data.frame(CustomerId = c(1:6), Product = c(rep("Oven", 3), rep("Television", 3)))
df1
df2 = data.frame(CustomerId = c(2, 4, 6,7), State = c(rep("California", 3), rep("Texas", 1)))
df2
# Merging happens based on the common column name in both the data sets
# Inner Join
df<-merge(x=df1,y=df2,by="CustomerId")
df
# Outer Join
df<-merge(x=df1,y=df2,by="CustomerId",all=TRUE)
df
x<-c(8,'Oven','California') # cbind is used to combine column wise 
df2<-rbind(df,x) # it is used to combine rows in data frame
df2
# Left outer join
df<-merge(x=df1,y=df2,by="CustomerId",all.x=TRUE)
df
# Right outer join 
df<-merge(x=df1,y=df2,by="CustomerId",all.y=TRUE)
df


data("Seatbelts")
View(Seatbelts)
data()
data("iris")
View(iris)
?iris

# Apply functions 
# Returns a vector or array or list of values obtained by 
#applying a function to margins of an array or matrix or data frames 
#apply(df , 1 or 2 , function)

z = apply(iris[,1:4], 2 ,mean)
z
# # lapply function tak
z = apply(iris[,1:4], 2 ,mean)
z
# # lapply function takes list, vector or Data frame  as input and returns only list as output
#lapply(df , function)
x = lapply(iris[,1:4],mean)
x
# # sapply function takes list, vector or Data frame  as input. It is similar to lapply 
#function but returns only vector as output

y = sapply(iris[,1:4],mean)
y
# tapply

data("iris")
View(iris)
iris$Sepal.Length

attach(iris)
Sepal.Length

detach(iris)
Sepal.Length


is.vector(Sepal.Length)

tapply(Sepal.Length, Species, mean) # mean of Sepal.Length for all 3 Species 

tapply(Sepal.Width, Species, median)

data("iris")
View(iris)
iris$Petal.Length

#apply(iris[[1:4],2,mean)
#tapply(Petal.Length,Species,mean)
#sapply(iris[1:4],median)
data()
data("mtcars")
View(mtcars)
mtcars$mpg
mpg

nrow(mtcars) # no.of rows in mtcars
row.names(mtcars) # row names 
ncol(mtcars) # number of columns 
colnames(mtcars) # column names in mtcars 
names(mtcars) 
dim(mtcars) # dimensions ( rows X columns )
dimnames(mtcars) # Dimension names ( row names and column names )

head(mtcars,10) # top 10 observations 
tail(mtcars,4) # bottom 4 observations

data("mtcars")
min(mtcars$mpg, na.rm = T) # na.rm --> Remove NA values 
max(mtcars$mpg, na.rm = T)
range(mtcars$mpg,na.rm = T) # Return both min and max 

# mean, median
mean(mtcars$mpg, na.rm = T) # Average 
median(mtcars$mpg, na.rm = T) # middle most value in data after sorting in ascending or descending
range(mtcars$mpg,na.rm = T)

mtcars$cyl = factor(mtcars$cyl)
table(mtcars$cyl)
mba$datasrno <- as.factor(mba$datasrno)
str(mba)
#install.packages(psych)
library(psych)
describe(mba)


##Handy dplyr Verb:
#Filter --> filter()
#Select --> select()
#Arrange --> arrange()

install.packages('dplyr')
library(dplyr)
#Structure:
# First Argument is a DataFrame
# Subsequent Argument say what to do with Data Frame
# Always ret

mtcars[,c(2,10)] # extract entire rows in columns 2 and 10 
filter(mtcars , cyl==8)

filter(mtcars,cyl==8,gear==5)


filter(mtcars,cyl==8 & gear == 5) # and gate (&)  
filter(mtcars,cyl==8 | gear == 5) # OR gate(|)

#select method
sel = select(mtcars,mpg,cyl,gear)
sel
filter(select(mtcars,mpg,cyl,gear),cyl == 4)
# Use ":" to select multiple contiguous columns, 
#and use "contains" to match columns by name

select(mtcars,carb,mpg:disp,gear)

#Syntax:
#arrange(dataframe,orderby)
arrange(mtcars,cyl)
arrange(select(mtcars,"cyl","gear"),cyl)
arrange(select(mtcars,"cyl","gear"),cyl,gear)
arrange(select(mtcars,"cyl","gear"),desc(cyl))
arrange(select(mtcars,"cyl","gear"),cyl,desc(gear))

mtcars[,c(1,2)]
a <- c(1,2,3,100)
mean(a)
median(a)

# Assignment Operator alt - or = 
#x = read.csv("E:\\Datasets\\Datasets_BA 2\\mba.csv")
mba <- read.csv("E:/data science/28th jan/mba.csv")
# Path needs to be modified to either / or \\
# mba <- read.csv(file.choose())
#Measures of Central Tendency
mean(mba$gmat)
median(mba$gmat)
View(mba)

#mode
getmode <- function(x){
  uniquv <- unique(x)
  uniquv[which.max(tabulate(match(x,uniquv)))]
}
getmode(mba$gmat)


#Measures of Dispersion
var(mba$gmat)
sd(mba$gmat)
range(mba$gmat)
rangevalue <- function(x){max(x)-min(x)}
rangevalue(mba$gmat)

#Measures of skewness
install.packages("moments")
library(moments)
??moments

#Measures of skewness
skewness(mba$gmat)


#Measures of Kurtosis 
kurtosis(mba$gmat)

#Graphical R,epresentation
#Boxplot
#Histogram
#Barplot

boxplot(mba$gmat)
hist(mba$gmat)
barplot(mba$gmat)
?hist
data = c(15,24,38,54)
names = c("one","two","three","four")
pie(data,labels = names,radius =1 )


str(mba)
x = c(1,1,1,2,1,2,1,2,1,2,1,2,1,2,1)
y = as.factor(x)
str(y)
mba$data


