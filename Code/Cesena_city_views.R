# City Views
# Test 1
# Città: Cesena


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

list_cities(match = "Cesen")

city <- new_city(name = "Cesena", country = "Italy", lat = 44.15, long = 12.24)

p <- cityview(name = "Cesena", zoom = 0.5, theme = "comic") # or cityview(name = city)

ggplot2::ggsave(filename = "Cesena.png", plot = p, height = 500, width = 500, units = "mm", dpi = 100)

# For example: black, beige and white theme, streets only
myTheme <- list(
  colors = list(
    background = "#232323",
    water = NA,
    landuse = NA,
    contours = NA,
    streets = "#d7b174",
    rails = c("#d7b174", "#232323"),
    buildings = NA,
    text = "#ffffff",
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
cityview(name = "Cesena", zoom = 0.5, theme = myTheme, border = "square", filename = "Cesena_street.png")



myTheme <- list(
  colors = list(
    background = "#232323",
    water = NA,
    landuse = NA,
    contours = NA,
    streets = "#d7b174",
    rails = c("#d7b174", "#232323"),
    buildings = NA,
    text = "#ffffff",
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

cityview(name = "Cesena", zoom = 0.5, theme = myTheme, border = "square", filename = "Cesena_street.png")


cityview(name = "Cesena", zoom = 0.5, theme = my_Theme_street, border = "square", filename = "Cesena_street.png")