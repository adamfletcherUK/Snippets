library(tidyverse)
mpg <- ggplot2::mpg


ggplot(data = mpg, #select the dataset to be in the graph (but not the actual data values)
### Global Mapping (Across multiple Geom types)     
       mapping = aes(x = displ,
                     y = hwy)
       ) +  
  labs(x = 'X-axis',y = 'Y-axis', title = 'Dope Ass Line Plots') +
### Single Scatterplot ###
    geom_point(mapping = aes(,
                           x = displ,
                           y = hwy,
                           colour = class, # Changes the colour of the points
                           size = NULL, # Changes size of the points
                           alpha = NULL, # Transparency,between 0-1 (usually a fraction)
                           shape = NULL, # Changes shape of the points, MAX 6 groups
                           ),
### Changes all Geom_Point Values
             shape = 21, # Point Shape
             colour = "black", # Border Colour
             fill = "yellow", #Fill Colour
             size = 2, # Size of Fill
             stroke = 1, # Thickness of Border
             alpha = 0.2, # Transparency,between 0-1 (usually a fraction)
             show.legend = TRUE
             ) +
# ### Multiple Plots based on 1 variable
#   facet_wrap(~ class, # makes multiple plots based on a variable
#              nrow = NULL, 
#              ncol = NULL, 
#              )
# ### Multiple Plots based on multiple variables
#   facet_grid(drv ~ .) #You can replace a variable with . if you just want one variable
### Smooth Scatterplot ###
  geom_smooth(,
              mapping = aes(,
                            x = displ,
                            y = hwy,
                            linetype = NULL, # Makes a line for each variable
                            group = NULL, # Group lines by variable
                            colour = NULL, # Colour lines by variable
                            ),
              show.legend = TRUE,
              data = filter(mpg, class == "subcompact"), # Filters data based on value in variable
              se = TRUE, # Standard Error
              )

