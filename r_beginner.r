# This file contains some basic R scripts for practice with my Google Data Analytics course

# This example file uses the ToothGrowth dataset which is included in PositCloud (previously RStudioCloud)
data("ToothGrowth")
View(ToothGrowth)

## Step by step method
# Select records where the dose of vitamin C was 0.5 (regardless of VC source)
filtered_tg <- filter(ToothGrowth,dose==0.5)
# Vew the results
View(filtered_tg)
# Sort the results by length
arrange(filtered_tg,len)

## Nested method to do the same as above
arrange(filter(ToothGrowth,dose==0.5),len)

## Pipe method to do the same as above and group by supplement type
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  arrange(len)

## Altered pipe to summarize data using mean values
filtered_mean_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len,na.rm = T),.group="drop")
