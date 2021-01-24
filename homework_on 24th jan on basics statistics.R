#datasets 
library(moments)
quakes <- datasets::quakes
#standard deviation 
sd(quakes$lat, na.rm = FALSE)
sd(quakes$long, na.rm = FALSE)
sd(quakes$depth, na.rm = FALSE)
sd(quakes$mag, na.rm = FALSE)
sd(quakes$stations,na.rm = FALSE)

#VARIANCE
var(quakes$lat, na.rm = FALSE)
var(quakes$long, na.rm = FALSE)
var(quakes$depth,na.rm = FALSE)
var(quakes$mag,na.rm = FALSE)
var(quakes$stations, na.rm = FALSE)

#SKEWNESS
skewness(quakes$lat, na.rm = FALSE)
skewness(quakes$long,na.rm = FALSE)
skewness(quakes$depth,na.rm = FALSE)
skewness(quakes$mag, na.rm = FALSE)
skewness(quakes$stations, na.rm = FALSE)

#KURTOSIS 
kurtosis(quakes$lat, na.rm = FALSE )
kurtosis(quakes$long, na.rm = FALSE)
kurtosis(quakes$depth, na.rm = FALSE )
kurtosis(quakes$mag, na.rm = FALSE)
kurtosis(quakes$stations, na.rm = FALSE)

#PLOT 
plot(quakes)
plot(quakes$lat, quakes$long)

#barplot 
barplot(quakes$lat, main = 'latitudes of quakes', 
        xlab = 'lat',  ylab = 'frequency', col = 'red',
        horiz = FALSE, axes = TRUE)


barplot(quakes$lat,quakes$long, xlab = 'latitude', 
        ylab = 'longitude', main = 'lat. vs long',col = 'red',
        horiz = FALSE)

#HISTOGRAM

hist(quakes$lat, main = 'latitude distrubution',
     xlab = 'latitude', col = 'red')

#boxplot 

boxplot(quakes$long, main = 'longitude')
boxplot(quakes)

