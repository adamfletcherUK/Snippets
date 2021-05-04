#Clear the memory
rm(list=ls())
#Download some important packages

requiredPackages <- c("tidyverse", "maps", "mapdata", "maptools", "rgdal", "ggmap", "rgeos", "broom", "plyr")
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)


#Load the shapefile - make sure you change the filepath to where you saved the shapefiles
shapefile <- readOGR(dsn="~/Google Drive/Data Studio Projects/Mapping Opportunities/NUTS_Level_2_January_2018_Super_Generalised_Clipped_Boundaries_in_the_United_Kingdom", 
                     layer="NUTS_Level_2_January_2018_Super_Generalised_Clipped_Boundaries_in_the_United_Kingdom")


counties_wanted <- c("Cheshire",
                     "Cumbria",
                     "Derbyshire and Nottinghamshire",
                     "East Wales",
                     "East Yorkshire and Northern Lincolnshire",
                     "Eastern Scotland",
                     "Greater Manchester",
                     "Herefordshire, Worcestershire and Warwickshire",
                     "Lancashire",
                     "Leicestershire, Rutland and Northamptonshire",
                     "Lincolnshire",
                     "Merseyside",
                     "North Yorkshire",
                     "Northumberland and Tyne and Wear",
                     "Shropshire and Staffordshire",
                     "South Yorkshire",
                     "Southern Scotland",
                     "Tees Valley and Durham",
                     "West Central Scotland",
                     "West Midlands",
                     "West Wales",
                     "West Yorkshire")
#Reshape for ggplot2 using the Broom package
mapdata <- tidy(shapefile, region="nuts218nm")

mapdata<- mapdata[mapdata$id %in% counties_wanted, ]

#Check the shapefile has loaded correctly by plotting an outline map of the UK
gg <- ggplot() + geom_polygon(data = mapdata, aes(x = long, y = lat, group = group), color = "#FFFFFF", size = 0.25, fill= "#40a558")
gg <- gg + coord_fixed(1) #This gives the map a 1:1 aspect ratio to prevent the map from appearing squashed
gg <- gg + theme(panel.background = element_rect(fill = "#cce5f9"))
gg <- gg + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), legend.position = 'none')
gg <- gg + theme(axis.title.x=element_blank(), axis.text.x = element_blank(), axis.ticks.x = element_blank())
gg <- gg + theme(axis.title.y=element_blank(), axis.text.y = element_blank(), axis.ticks.y = element_blank())
gg <- gg + theme(panel.border = element_rect(colour = "black", fill=NA, size=1))
print(gg)


#### NOT CURRENTLY WORKING: DISPLAYS MULTIPLE POINTS AND AREAS I'VE REMOVED!! FROM MAP###
shapefile <- readOGR(dsn="~/Google Drive/Data Studio Projects/Mapping Opportunities/Major_Towns_and_Cities_December_2015_Boundaries", 
                     layer="Major_Towns_and_Cities_December_2015_Boundaries")
citydata <- tidy(shapefile, region="tcity15nm")
gg <- gg + geom_polygon(data = citydata, aes(x = long, y = lat, group = group))




######
### Google API key needed!!!
library(ggmap)
map <- get_map(location = 'Europe', zoom = 4)

#####
cities <- citydata %>%
  group_by() %>%
  summarise(id_count = count(id))

