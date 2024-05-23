library(tidyverse)
library(dplyr)
library(scales)
library(ggthemes)

boxplot1 <- ggplot(population_climate_1900_2010, aes(x = ST, y = Population_Change_Percentage, fill = Temp_Change)) +
  geom_boxplot(outlier.shape = 8, outlier.color = "red", outlier.size = 2) + 
  geom_jitter(width = 0.2, alpha = 0.5, color = "black") +  
  facet_wrap(~Region, scales = "free_x") + 
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0, limit = c(min(population_climate_1900_2010$Temp_Change), max(population_climate_1900_2010$Temp_Change)), name = "Temp Change") +
  labs(title = "Population Change Percentage and Temperature Change by State and Region (1900-2010)",
       subtitle = "Analysis of population dynamics with respect to historical weather changes",
       x = "State",
       y = "Population Change Percentage") +
  theme_tufte(base_size = 14) +  
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 8), 
        strip.text.x = element_text(size = 10, face = "bold"))  
