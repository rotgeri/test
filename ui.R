#alle layout, user interface
library(shiny)

shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Anzahl Klassen:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    mainPanel(
      plotOutput("distPlot")
    )
  )
  
))