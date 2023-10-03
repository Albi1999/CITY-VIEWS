# City Views
# Città: Roma

# CARICAMENTO LIBRERIE ----
library(rcityviews)
library(tidyverse)
library(sf)
library(rnaturalearth)
library(wbstats)
library(gganimate)
library(classInt)
library(transformr)
library(ggplot2)

# MAPPA CITTA'

list_cities(match = "Rome")

city <- new_city(name = "Rome", country = "Italy", lat = 41.89, long = 12.50)

p <- cityview(name = "Rome", zoom = 0.5, theme = "comic") # or cityview(name = city)

ggplot2::ggsave(filename = "Roma.png", plot = p, height = 500, width = 500, units = "mm", dpi = 100)

# For example: black, beige and white theme, streets only
myTheme <- list(
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
    append = "\u2014"
  ),
  size = list(
    borders = list(
      contours = 0.3,
      water = 0.4,
      canal = 0.5,
      river = 0.6
    ),
    streets = list(
      path = 0.2,
      residential = 0.4,
      structure = 0.5,
      tertiary = 0.7,
      secondary = 0.8,
      primary = 0.9,
      motorway = 1,
      rails = 0.75,
      runway = 3
    )
  )
)

s <- cityview(name = "Rome", zoom = 0.5, theme = myTheme, border = "square")

ggplot2::ggsave(filename = "Roma_street.png", plot = s, height = 500, width = 500, units = "mm", dpi = 100)


