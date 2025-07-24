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
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))


#to know more about a specific function, run "?<function_name>" (help page of a function/ R documentation)
?geom_point