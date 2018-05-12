library(dplyr)
library(shiny)
library(ggplot2)




shinyServer(function(input, output) {
  # Render plot of diamonds
  output$plot <- renderPlot({
    ggplot(data = diamonds, aes_string(x = input$x_var, y = input$y_var))+
      geom_point(colour = input$colour)
  }) # End of render plot
}) # End of shiny server