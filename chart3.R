library(ggplot2)
library(dplyr)

# Temperature Change vs. Latitude
ggplot(population_climate_1900_2010, aes(x = LAT, y = Temp_Change)) +
  geom_point(aes(color = Region), alpha = 0.6) +
  labs(title = "Temperature Change vs. Latitude",
       x = "Latitude",
       y = "Temperature Change (°C)") +
  theme_minimal()

# Precipitation Change vs. Latitude
ggplot(population_climate_1900_2010, aes(x = LAT, y = Prcp_Change)) +
  geom_point(aes(color = Region), alpha = 0.6) +
  labs(title = "Precipitation Change vs. Latitude",
       x = "Latitude",
       y = "Precipitation Change (mm)") +
  theme_minimal()

# Temperature Change vs. Longitude
ggplot(population_climate_1900_2010, aes(x = LON, y = Temp_Change)) +
  geom_point(aes(color = Region), alpha = 0.6) +
  labs(title = "Temperature Change vs. Longitude",
       x = "Longitude",
       y = "Temperature Change (°C)") +
  theme_minimal()

# Scatter plot for Precipitation Change vs. Longitude
ggplot(population_climate_1900_2010, aes(x = LON, y = Prcp_Change)) +
  geom_point(aes(color = Region), alpha = 0.6) +
  labs(title = "Precipitation Change vs. Longitude",
       x = "Longitude",
       y = "Precipitation Change (mm)") +
  theme_minimal()

