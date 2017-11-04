## load tidyverse packages
library(tidyverse)

## download the files from the website
download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv",
              "data/gapminder.csv")

gapminder <- read_csv("data/gapminder.csv")

## Challenge:
## calculate the average life expectancy by continent
## (and save it in a variable called life_exp_continent)

life_exp_continent <- gapminder %>% 
  group_by(continent) %>% 
  summarise(
    mean_life_exp = mean(lifeExp)
  )

## Challenge
## get the life expectancy by year for Canada

life_exp_canada <- gapminder %>% 
  filter(country == "Canada") %>% 
  select(year, lifeExp)

## Get the mean gdp per continent for the year 1972
mean_gdp_continent <- gapminder %>%
  filter(year == 1972) %>% 
  group_by(continent) %>% 
  summarize(
      mean_gdp = mean(gdpPercap)
  )


