library(readxl)
mean_data <- read_excel(file.choose())
head(mean_data)
library(ggplot2)
ggplot(mean_data, aes(x = Date, y = Stand, color = Variety, group = Variety)) +
  geom_line(linewidth = 1) +
  geom_point(size = 1) +
  labs(
    x = "Observation Dates",
    y = "Stand Count",
    title = "Statistical Means Showing Stand Counts of 11 Varieties Over Time"
  ) +
  theme_classic() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1))+
scale_color_manual(values = c(
  "V1" = "maroon",
  "V2" = "#1b9e77",
  "V3" = "orangered",   
  "V4" = "purple",
  "V5" = "black",
  "V6" = "green",
  "V7" = "yellow",
  "V8" = "red",
  "V9" = "skyblue",
  "V10" = "gray",
  "V11" = "blue"
))
ggplot(mean_data, aes(x = Variety, y = Stand, fill = Variety)) +
  geom_col(color = "black", width = 0.9) +
  labs(
    x = "Variety",
    y = "Stand Count",
    title =
  ) +
  theme_classic() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "none")+
  scale_fill_manual(values = c(
    "#B30000",  
    "#FF0000",  
    "#FF1A1A",  
    "#FF3333",  
    "#FF4D4D",  
    "#FF0066",  
    "#FF1493",  
    "#FF33A6",  
    "#FF66CC",  
    "#FF99DD",  
    "#FFC1E3"   
  ))
Stand Line Plot below 
ggplot(my_data, aes(x = Temperature, y = Hectares, group = 1)) +
  geom_line(linewidth = 1, color = "#990000") +
  geom_point(size = 0.8, color = "#990000") +
  theme_classic() +
  scale_y_continuous(labels = scales::label_number(big.mark = ",")) +
  labs(x = "Minimum Temperature Recorded Prior to Stand Count Assessment(°C)",
       y = "Cummulative Stand Count(plants/hectares)")
