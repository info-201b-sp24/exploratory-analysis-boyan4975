
library(ggplot2)

library(dplyr)


Phonie_dataset <- read.csv("./Phoenix.csv")

Phoniex_plot <- ggplot(data = Phonie_dataset) +
  geom_line(mapping = aes(x = Year, y = Avg.Temp)) +
  ggtitle("Average Temperature Change for Phoniex")



Phoniex_plot



Astoria_CSV <- read.csv('./Astoria.csv');


Astoria_plot <- ggplot(data = Astoria_CSV) +
  geom_line(mapping = aes(x = Year, y = Avg.Temp)) +
  ggtitle("Average Temperature Change for Astoria")




