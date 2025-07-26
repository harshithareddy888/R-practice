#gglot2
install.packages("ggplot2")
install.packages("palmerpenguins")

#loading the packages
library(ggplot2)
library(palmerpenguins)

#view() and data() to examine the data frame
data(penguins)
View(penguins)

#create a gglot2
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species, shape = species, size=species))
ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm),color='purple')
ggplot(data = penguins) + geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha=species))


#to know more about a specific function, run "?<function_name>" (help page of a function/ R documentation)
?geom_point

#Another example
hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

install.packages('ggplot2')
library(ggplot2)

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))


#bar-chart (lets use diamonds dataset which comes with ggplot2 package)
ggplot(data= diamonds)+
  geom_bar(mapping = aes(x=cut, fill=clarity))

#facet_functions
#facet_wrap
ggplot(data=penguins, aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(colour = species))+
  facet_wrap(~species)

ggplot(data= diamonds)+
  geom_bar(mapping = aes(x=color, fill=cut))+
  facet_wrap(~cut)
#facet function for two variables - facet_grid
ggplot(data=penguins, aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(colour = species))+
  facet_wrap(sex~species)
