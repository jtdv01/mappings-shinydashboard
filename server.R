
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library("leaflet")
# library("rgdal")
load("data/shapes.RData")


shinyServer(function(input, output) {
  output$leafletMap <- renderLeaflet({
    # Assumes layer is now in a data image

    leaflet(layer) %>% addTiles() %>% 
      addPolygons(stroke=FALSE,fillOpacity=0.5,
                  color = ~colorQuantile("YlOrRd", 
                                         as.numeric(layer$STATE_CODE))(as.numeric(layer$STATE_CODE))
      )
  })

})
