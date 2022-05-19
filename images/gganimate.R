library(gapminder)
library(ggplot2)
library(gganimate)
theme_set(theme_bw())

p <- ggplot(
  airquality,
  aes(Day, Temp, group = Month, color = factor(Month))
) +
  geom_line() +
  scale_color_viridis_d() +
  labs(x = "Day of Month", y = "Temperature") +
  theme(legend.position = "top")
p
p+transition_reveal(Day)

install.packages('Rcpp')
