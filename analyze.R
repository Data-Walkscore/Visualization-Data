
data <- read.csv("yerevan_map_1.csv")

data
summary(data)

str(data)
data$amenity

data[data$amenity == "restaurant",] 
