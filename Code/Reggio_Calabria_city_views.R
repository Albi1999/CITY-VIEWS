# City Views
# Città: Reggio Calabria

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

list_cities(match = "Reggio")

city <- new_city(name = "Reggio di Calabria", country = "Italy", lat = 38.11, long = 15.65)

p <- cityview(name = "Reggio di Calabria", zoom = 0.5, theme = "comic") # or cityview(name = city)

ggplot2::ggsave(filename = "Reggio_Calabria.png", plot = p, height = 500, width = 500, units = "mm", dpi = 100)

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
cityview(name = "Reggio di Calabria", zoom = 1, theme = myTheme, border = "square", filename = "Reggio_Calabria_street.png")


