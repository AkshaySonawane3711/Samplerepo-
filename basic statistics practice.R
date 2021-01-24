#datasets 
airquality <- datasets::airquality


head(airquality,10)
tail(airquality,10)


airquality[,c(1,2)]
#summary 
summary(airquality, 4)
#skewness
library(moments)
skewness(airquality[,4],na.rm = TRUE)


airquality$Solar.R
summary(airquality$Solar.R)
#kurtosis 
kurtosis(airquality$Solar.R, na.rm = TRUE )

skewness(airquality$Solar.R, na.rm = TRUE )

#plot 
par(mfrow = c(3,3),mar = c(2,52,1), las = 0,bty = '0')
plot(airquality$Solar.R)

plot(airquality$Ozone,airquality$Solar.R)


plot(airquality,)

plot(airquality$Temp, airquality$Month, type = 'p')
plot(airquality$Temp,airquality$Solar.R, type = 'l')
plot(airquality$Ozone,airquality$Wind, type = 'both')

#horizontal bar plot 
barplot(airquality$Ozone , xlab = 'ozone', ylab = 'no of instance',
     main ='ozone concentration', col= 'blue', horiz = F, axes= T) 

#histogram 
hist(airquality$Ozone)

hist(airquality$Ozone, main = 'ozone concentration', xlab = 'ozone',
   col = 'green' )

#boxplot

boxplot(airquality$Solar.R, main= 'boxplot for solar.R')

boxplot(airquality[1:6])
