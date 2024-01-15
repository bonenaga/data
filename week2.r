# Data Analysis Code Snippets

# Install Packages
install.packages("tidyverse")

# Include Libraries
library(tidyverse)

# Preview the "diamonds" dataset in different ways
head(diamonds)
str(diamonds)
glimpse(diamonds)

# View column names from the "diamonds" dataset
glimpse(diamonds)

# Rename columns as part of the data cleaning process
rename(diamonds, carat_new = carat)

# Find the mean carat size
summarize(diamonds, mean_carat = mean(carat))

# Data Visualization
# Plot the data on a scatterplot graph
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()

# Create separate graphs to reduce clutter
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)

