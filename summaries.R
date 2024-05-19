library(dplyr)

# A function that takes in a dataset and returns a list of info about it:
summary_info <- list()
summary_info$number_cities <- nrow(population_climate)
summary_info$number_features <- ncol(population_climate)
summary_info$Regions_median <- population_climate %>% group_by(Region) %>% summarize(
  median_pop_change_perc_by_region = median(Population_Change_Percentage),
  median_temp_change_by_region = median(Temp_Change, na.rm = TRUE),
  median_prcp_change_by_region = median(Prcp_Change, na.rm = TRUE)
)
summary_info$Regions_highest <- population_climate %>% group_by(Region) %>% summarize(
  highest_pop_change_perc_by_region = max(Population_Change_Percentage),
  highest_temp_change_by_region = max(Temp_Change, na.rm = TRUE),
  highest_prcp_change_by_region = max(Prcp_Change, na.rm = TRUE)
)
summary_info$Regions_lowest <- population_climate %>% group_by(Region) %>% summarize(
  lowest_pop_change_perc_by_region = min(Population_Change_Percentage),
  lowest_temp_change_by_region = min(Temp_Change, na.rm = TRUE),
  lowest_prcp_change_by_region = min(Prcp_Change, na.rm = TRUE)
)


