library(tidyverse)

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
