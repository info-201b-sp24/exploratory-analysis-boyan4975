library(dplyr)

# A function that takes in a dataset and returns a list of info about it:
summary_info <- list()
summary_info$region <- population_climate_1900_2010 %>% group_by(Region) %>% summarize(
  median_pop_change_city = City[which.min(abs(Population_Change_Percentage - median(Population_Change_Percentage, na.rm = TRUE)))],
  median_pop_change_percentage = median(Population_Change_Percentage),
  median_temp_change_city = City[which.min(abs(Temp_Change - median(Temp_Change, na.rm = TRUE)))],
  median_temp_change_Fahrenheit = median(Temp_Change, na.rm = TRUE),
  median_prcp_change_city = City[which.min(abs(Prcp_Change - median(Prcp_Change, na.rm = TRUE)))],
  median_prcp_change_inch = median(Prcp_Change, na.rm = TRUE),
  highest_pop_change_city = City[which.min(abs(Population_Change_Percentage - max(Population_Change_Percentage, na.rm = TRUE)))],
  highest_pop_change_percentage = max(Population_Change_Percentage),
  highest_temp_change_city = City[which.min(abs(Temp_Change - max(Temp_Change, na.rm = TRUE)))],
  highest_temp_change_Fahrenheit = max(Temp_Change, na.rm = TRUE),
  highest_prcp_change_city = City[which.min(abs(Prcp_Change - max(Prcp_Change, na.rm = TRUE)))],
  highest_prcp_change_inch = max(Prcp_Change, na.rm = TRUE),
  lowest_pop_change_city = City[which.min(abs(Population_Change_Percentage - min(Population_Change_Percentage, na.rm = TRUE)))],
  lowest_pop_change_percentage = min(Population_Change_Percentage, na.rm = TRUE),
  lowest_temp_change_city = City[which.min(abs(Temp_Change - min(Temp_Change, na.rm = TRUE)))],
  lowest_temp_change_Fahrenheit = min(Temp_Change, na.rm = TRUE),
  lowest_prcp_change_city = City[which.min(abs(Prcp_Change - min(Prcp_Change, na.rm = TRUE)))],
  lowest_prcp_change_inch = min(Prcp_Change, na.rm = TRUE),
)  
