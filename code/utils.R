# Utility functions and themes for plots
library(ggplot2)

theme_course <- function() {
  theme_minimal(base_size = 12) +
    theme(panel.grid.minor = element_blank(),
          plot.title = element_text(face = "bold"))
}
