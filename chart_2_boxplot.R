library(tidyverse)
library(dplyr)
library(scales)
library(ggthemes)

# All data preparation steps have already been executed and the final dataframe is `population_climate_1900_2010`

# Creating the enhanced box plot
boxplot <- ggplot(population_climate_1900_2010, aes(x = ST, y = Population_Change_Percentage, fill = Temp_Change)) +
  geom_boxplot(outlier.shape = 8, outlier.color = "red", outlier.size = 2) +  # Redefine outlier properties
  geom_jitter(width = 0.2, alpha = 0.5, color = "black") +  # Adding jitter to show individual data points
  facet_wrap(~Region, scales = "free_x") +  # Faceting by Region
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0, limit = c(min(population_climate_1900_2010$Temp_Change), max(population_climate_1900_2010$Temp_Change)), name = "Temp Change") +
  labs(title = "Population Change Percentage and Temperature Change by State and Region (1900-2010)",
       subtitle = "Analysis of population dynamics with respect to historical weather changes",
       x = "State",
       y = "Population Change Percentage") +
  theme_tufte() +  # Using Edward Tufte's minimalist theme for clarity
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 8),  # Improving readability of x-axis labels
        strip.text.x = element_text(size = 10, face = "bold"))  # Enhancing facet labels
