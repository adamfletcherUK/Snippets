library(shiny)
ui <- fluidPage(
  #### SLIDING INPUT: ================================
  # https://shiny.rstudio.com/reference/shiny/1.0.5/
  #
  # https://shiny.rstudio.com/reference/shiny/1.0.5/sliderInput.html
  
  sliderInput(inputId = "num", #the name given to this feature on the webpage (it is callable)
              label = "Choose a number", #text to display with feature
              value = 25, min =1, max = 100)
  
)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)