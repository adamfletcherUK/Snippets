library(tidyverse)

####### SECTION 7.2 ######

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

diamonds %>%
  count(cut_width(carat, 0.5)) #makes a table of the above histogram

smaller <- diamonds %>% 
  filter(carat < 3)

ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.1)

ggplot(data = smaller, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)

###### SECTION 7.3.2 #######
ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.01)

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))

unusual <- diamonds %>% 
  filter(y < 3 | y > 20) %>% 
  select(price, x, y, z) %>%
  arrange(y)
unusual

##### SECTION 7.3.4 Questions ####

# Question 1
ggplot(data = diamonds) +
  geom_freqpoly(mapping = aes(x = x),binwidth = 0.1, colour = "red") +
  geom_freqpoly(mapping = aes(x = y),binwidth = 0.1, colour = "blue") +
  geom_freqpoly(mapping = aes(x = z),binwidth = 0.1, colour = "green") +
  coord_cartesian(xlim = c(1, 10))
#length and depth (x + y) are the same due to the typical way a diamond is looked at. Facing its broadest side
#diamonds are typically cut so that they are even.

#Question 2
ggplot(data = diamonds, mapping = aes(x = price, fill = cut)) +
  geom_histogram(binwidth = 200)

pricing <- diamonds %>%
  group_by(cut_width(price, 100), cut) %>%
  summarise(
    count = n() #why does noone pay $1500 for a diamond
    ) %>%
  separate(cut, count)
  
#Question 3
diamonds %>%
  filter(carat == 0.99) %>%
  count(carat) # 23 diamonds have carat of 0.99
diamonds %>%
  filter(carat == 1) %>%
  count(carat) # 1558 diamonds have carat of 1

