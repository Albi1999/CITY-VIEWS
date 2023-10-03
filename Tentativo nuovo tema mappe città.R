# City Views
# Città: Palermo

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

list_cities(match = "Palermo")

city <- new_city(name = "Palermo", country = "Italy", lat = 38.12, long = 13.36)

p <- cityview(name = "Palermo", zoom = 0.5, theme = "comic") # or cityview(name = city)

ggplot2::ggsave(filename = "Palermo.png", plot = p, height = 500, width = 500, units = "mm", dpi = 100)

# Tema funzionante città
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

# Tema funzionante strade
my_Theme_street <- list(
  colors = list(
    background = "#232323",
    water = NA,
    landuse = NA,
    contours = NA,
    streets = "#f0951e",
    rails = c("#f0951e", "#232323"),
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


ggplot2::ggsave(filename = "Palermo_street.png", plot = s, height = 500, width = 500, units = "mm", dpi = 100)


