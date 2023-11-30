ewpw <- read.csv("C:/Users/User/Desktop/locs.csv")
ewpw$Latitude <- ewpw$Latitude 
ewpw$Longitude <- ewpw$Longitude

install.packages("raster")
library(raster)

my.dat = data.frame(ewpw$Latitude, ewpw$Longitude)

space <- SpatialPoints(coords = data.frame("x" = ewpw$Longitude, "y" = ewpw$Latitude)) 

crs(space) <- CRS("+init=epsg:4326")
plot(space, axes = TRUE, xlab = "Longtitude", ylab = "Latitude", main = "Migration and Overwintering Locations", pch = 3)
