
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library("shiny")
library("shinydashboard")
library("leaflet")

dashboardPage(title="Mapping using Shiny",
  dashboardHeader(title="Mapping using Shiny"),
  # Sidebar with a slider input for number of bins
  dashboardSidebar(),
  dashboardBody(
    # Show a plot of the generated distribution
    mainPanel(
      leafletOutput("leafletMap")
    )
  )
)
