#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality


####Top 10 rows and last 10 rows
head(airquality,5)
tail(airquality,10)

######Columns
airquality[,c(1,2)]

df<-airquality[,-6]

summary(airquality[,1])

airquality$Ozone

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind)


