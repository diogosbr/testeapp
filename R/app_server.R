#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  #output$grafico <- renderPlot({plot(cars)})
  output$meme <- renderPlot({
    meme(robin1 = input$robin1, 
         robin2 = input$robin2, 
         robin3 = input$robin3, 
         batman1 = input$batman1, 
         batman2 = input$batman2, 
         batman3 = input$batman3, 
         bat.pos1 = c(input$bat.pos1_x, input$bat.pos1_y),
         bat.pos2 = c(input$bat.pos2_x, input$bat.pos2_y),
         bat.pos3 = c(input$bat.pos3_x, input$bat.pos3_y),
         rob.pos1 = c(input$rob.pos1_x, input$rob.pos1_y),
         rob.pos2 = c(input$rob.pos2_x, input$rob.pos2_y),
         rob.pos3 = c(input$rob.pos3_x, input$rob.pos3_y),
         cex = input$size)
    })
}
