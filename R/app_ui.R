#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      h2("Gerador do meme"),
      sidebarPanel(
        textInput("robin1", "Robin 1L *", "A terra é plan...", width = "100%"),
        splitLayout(
          sliderInput("rob.pos1_x", "x", 150, step = 10, min = 100, max = 400, width = "100px"),
          sliderInput("rob.pos1_y", "y", 500, step = 10, min = 350, max = 600, width = "100px"),
          cellWidths = c("50%", "50%")
        ),
        
        
        
        textInput("robin2", "Robin 2L", "", width = "100%"),
        splitLayout(
          sliderInput("rob.pos2_x", "x", 150, step = 10, min = 100, max = 400, width = "100px"),
          sliderInput("rob.pos2_y", "y", 470, step = 10, min = 350, max = 600, width = "100px"),
          cellWidths = c("50%", "50%")
        ),
        
        # textInput("robin3", "Robin 3L", "", width = "400px"),
        # splitLayout(
        #   sliderInput("rob.pos3_x", "x", 150, step = 10, min = 100, max = 400, width = "100px"),
        #   sliderInput("rob.pos3_y", "y", 440, step = 10, min = 350, max = 600, width = "100px"),
        #   cellWidths = c("40%", "15%", "15%")
        # ),
        
        textInput("batman1", "Batman 1L *", "Cala a boca!", width = "100%"),
        splitLayout(
          sliderInput("bat.pos1_x", "x", 430, step = 10, min = 350, max = 600, width = "100px"),
          sliderInput("bat.pos1_y", "y", 500, step = 10, min = 350, max = 600, width = "100px"),
          cellWidths = c("50%", "50%")
        ),
        
        textInput("batman2", "Batman 2L", "", width = "100%"),
        splitLayout(
          sliderInput("bat.pos2_x", "x", 430, step = 10, min = 350, max = 600, width = "100px"),
          sliderInput("bat.pos2_y", "y", 460, step = 10, min = 350, max = 600, width = "100px"),
          cellWidths = c("50%", "50%")
        ),
        
        # textInput("batman3", "Batman 3L", "", width = "400px"),
        # splitLayout(
        #   sliderInput("bat.pos3_x", "Batman 3L (x)", 430, step = 10, min = 350, max = 600, width = "100px"),
        #   sliderInput("bat.pos3_y", "Batman 3L (y)", 420, step = 10, min = 350, max = 600, width = "100px"),
        #   cellWidths = c("40%", "15%", "15%")
        # ),
        
        sliderInput("size", "Tamanho do texto", 1.4, step = 0.1, min = 0.1, max = 3, width = '100%'),
      ),
      mainPanel(imageOutput("meme"))
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
  
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'testeapp'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

