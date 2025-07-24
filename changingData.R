#change solution - You can use these solutions to check your work and ensure that your code is correct or troubleshoot your code if it is returning errors. If you haven't completed the activity yet, we suggest you go back and finish it before reading the solutions."
# Step 1: Load packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)
# Step 2: Import data
hotel_bookings <- read_csv("hotel_bookings.csv")

# Step 3: Getting to know your data
head(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)

# Manipulating your data
arrange(hotel_bookings, lead_time) #asc

arrange(hotel_bookings, desc(lead_time)) #desc

#to save the changes into a new data frame
hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))

head(hotel_bookings_v2)

#Min and Max functions - you need to specify which data set and which column using the $ symbol between their names.
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)

#Mean function -to know what the average lead time for booking
mean(hotel_bookings$lead_time)
mean(hotel_bookings_v2$lead_time)  #ou should get the same answer even if you use the v2 data


hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")

head(hotel_bookings_city)

mean(hotel_bookings_city$lead_time)
hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
head(hotel_summary)
