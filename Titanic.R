---
title: "Titanic.R"
output: html_notebook
---

#Titanic Exercise from Datacamps's ggplot2 (Part 1) Series:

# Load titanic
library(tidyverse)
titanic <- read_csv("titanic3.csv")

# 1 - Check the structure of titanic
str(titanic)

# 2 - Plot the distribution of sexes within the classes of the ship
ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge") + facet_grid(.~ survived)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
ggplot(titanic, aes(x = pclass, y = age, color = sex)) + geom_point(size = 3, alpha = 0.5, position = posn.jd) + facet_grid(.~ survived)


