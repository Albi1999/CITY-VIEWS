# City Views
# City: Los Angeles_est

# LIBRAY ----
library(rcityviews)
library(tidyverse)
library(sf)
library(gganimate) 
library(classInt)
library(ggplot2)

# CITY ----

list_cities(match = "Los Angeles")

city <- new_city(name = "East Los Angeles", country = "United States of America", lat = 34.03, long = -118.17)

my_Theme_city <- list(
  colors = list(
    background = "white",
    water = "#00a2d2",
    landuse = "#008000",
    contours = NA,
    streets = "#f0951e",
    rails = c("#f0951e", "white"),
    buildings = "#25465d",
    text = "#25465d",
    waterlines = NA
  ),
  font = list(
    family = "serif",
    face = "bold",
    scale = 1,
    append = "\u2014"
  ),
  size = list(
    borders = list(
      contours = 0.15,
      water = 0.4,
      canal = 0.5,
      river = 0.6
    ),
    streets = list(
      path = 0.2,
      residential = 0.3,
      structure = 0.35,
      tertiary = 0.4,
      secondary = 0.5,
      primary = 0.6,
      motorway = 0.8,
      rails = 0.65,
      runway = 3
    )
  )
)

cityview(name = "East Los Angeles", zoom = 0.5, theme = my_Theme_city, border = "square", filename = "East_Los_Angeles_city.png")

# STREET ----

my_Theme_street <- list(
  colors = list(
    background = "#25465d",
    water = NA,
    landuse = NA,
    contours = NA,
    streets = "#f0951e",
    rails = c("#f0951e", "#25465d"),
    buildings = NA,
    text = "#00a2d2",
    waterlines = NA
  ),
  font = list(
    family = "serif",
    face = "bold",
    scale = 1,
    append = "\u2014"
  ),
  size = list(
    borders = list(
      contours = 0.15,
      water = 0.4,
      canal = 0.5,
      river = 0.6
    ),
    streets = list(
      path = 0.2,
      residential = 0.4,
      structure = 0.35,
      tertiary = 0.5,
      secondary = 0.7,
      primary = 1.0,
      motorway = 1.2,
      rails = 1.2,
      runway = 3
    )
  )
)

cityview(name = "East Los Angeles", zoom = 0.5, theme = my_Theme_street, border = "square", filename = "East_Los_Angeles_street.png")
