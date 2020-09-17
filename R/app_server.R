#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  #output$grafico <- renderPlot({plot(cars)})
  output$meme <- renderPlot({meme(input$robin, input$batman, cex = input$size)})
}
