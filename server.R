library(shiny)

bodyMassIndex <- function(weight, height){weight*703/height^2}
shinyServer(
        function(input, output){
         output$inputWtValue <- renderPrint({input$weight})
         output$inputHtValue <- renderPrint({input$height})
         output$prediction <- renderPrint({bodyMassIndex(input$weight, input$height)})

        })