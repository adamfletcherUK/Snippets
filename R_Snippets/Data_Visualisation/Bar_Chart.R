raw_data <- diamonds

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

