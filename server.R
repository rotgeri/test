#daten, infos, inhalte etc.

library(shiny)

shinyServer(function(input, output){
  output$distPlot <- renderPlot({
    x <- faithful[,2]
    bins <- seq(min(x), max(x),
                length.out = input$bins + 1)
    
    hist(x, breaks = bins,
         col = 'lightseagreen',
         border = 'white',
         main = "Histogramm mit shiny")
  })
})
#oder in console: runApp("shinyapp")