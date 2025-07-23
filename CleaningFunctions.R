#cleaning up
# IMPORTING DATA FROM CSV  
bookings_df <- read_csv("hotel_bookings.csv")  

# PREVIEWING DATA (FIRST FEW ROWS)  
head(bookings_df)  

# CHECKING DATA STRUCTURE  
str(bookings_df)  

# ALTERNATIVE WAY TO VIEW DATA STRUCTURE  
glimpse(bookings_df)  

# CHECKING COLUMN NAMES  
colnames(bookings_df)  

# SUMMARIZING DATA WITHOUT CHARTS (FROM skimr PACKAGE)  
skim_without_charts(bookings_df)  

# SELECTING SPECIFIC COLUMNS (hotel, is_canceled, lead_time)  
trimmed_df <- bookings_df %>%  
  select(hotel, is_canceled, lead_time)  

# RENAMING A COLUMN (hotel → hotel_type)  
trimmed_df <- trimmed_df %>%  
  rename(hotel_type = hotel)  

# COMBINING TWO COLUMNS (arrival_date_month & arrival_date_year → arrival_month_year)  
example_df <- bookings_df %>%  
  select(arrival_date_year, arrival_date_month) %>%  
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")  

# CREATING A NEW COLUMN (guests = adults + children + babies)  
example_df <- bookings_df %>%  
  mutate(guests = adults + children + babies)  

head(example_df)  

# CALCULATING SUMMARY STATISTICS  
# number_canceled = total canceled bookings  
# average_lead_time = mean lead_time across all bookings  
example_df <- bookings_df %>%  
  summarize(number_canceled = sum(is_canceled),  
            average_lead_time = mean(lead_time))  

head(example_df)  
