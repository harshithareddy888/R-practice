#filters and plots
#Import your data
hotel_bookings <- read.csv("hotel_bookings.csv")

# Refresh Your Memory
head(hotel_bookings)
colnames(hotel_bookings)

# Install and load the 'ggplot2' package
install.packages('ggplot2')
library(ggplot2)

#Making many different charts
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

#filtering
install.packages('tidyverse')
library(tidyverse)

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))
View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

View(onlineta_city_hotels_v2)

# Use your new dataframe
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))
