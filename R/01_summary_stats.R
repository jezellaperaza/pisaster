## this script loads the data and calculates some summary statistics

## load libraries
library("here")

## set location of the data directory 
data_dir <- here("data")

## load data file
pisaster_data <- readRDS(here(data_dir, "pisaster_data.Rds"))

## peek at the data
head(pisaster_data)

## calculate mean counts across all years, sites, and plots
mean_count <- mean(pisaster_data$count)

## write the first 10 rows of data
dput(pisaster_data[1:10,])

dat <- structure(list(2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 
                      2019, 2019, "a", "a", "a", "a", "a", "b", "b", "b", "b", 
                      "b", 1L, 2L, 3L, 4L, 5L, 1L, 2L, 3L, 4L, 5L, 6L, 10L, 13L, 
                      9L, 9L, 11L, 7L, 10L, 12L, 8L), .Dim = c(10L, 4L), .Dimnames = list(
                        NULL, c("year", "site", "plot", "count")))
