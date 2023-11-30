ewpw <- read.csv("C:/Users/User/Desktop/locs.csv")
ewpw$Latitude <- ewpw$Latitude 
ewpw$Longitude <- ewpw$Longitude

install.packages("raster")
library(raster)

my.dat = data.frame(ewpw$Latitude, ewpw$Longitude)

space <- SpatialPoints(coords = data.frame("x" = ewpw$Longitude, "y" = ewpw$Latitude)) 

crs(space) <- CRS("+init=epsg:4326")
plot(space, axes = TRUE, xlab = "Longtitude", ylab = "Latitude", main = "Migration and Overwintering Locations", pch = 3)


set.seed(123)
df1 <- data.frame("x" = seq(from = 1, to = 100), "y" = rnorm(n = 100, mean = 50, sd = 10))
plot(x = df1$x, y = df1$y)
hist(df1$y)
