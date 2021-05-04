# Introduction: =====================================================
# 
# Title: R Shiny Testing - Iris k-mean Clusering
# Author: Adam Fletcher
# Contact: dradamfletcher@gmail.com
# Date: 05-AUG-19
#


# Description: ===============================================
# This is designed to me a test for using R shiny to build 
# complex interactive dashboards using logic with out of the
# box tools like Power BI cannot handle.
# 
# Additionally, the later idea is to turn this into a template
# to form the basis of other shiny apps.
#
# 
#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
# 


# Prerequisties: ====================================================
# Loading of packages and setting global variables
# 

if (!require("pacman")) install.packages("pacman")
pacman::p_load("tidyverse", "shiny")


palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
           "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))



#### BASIC GUIDE: ===================================================
# To make interactive plots you need to connect the input (UI) and 
# output layers (Server)
# 
# Define Interactive Inputs:
# You can make input variable interactive using slider bars etc.
# Do this in the UI section
#
# Make the Graph based on interactive inputs:
# You can then grab the value of these with Input$'name' series of 
# commands and use it as a variable
# to plot graphs. Do this in the Server section.
#
# Draw the Graph:
# You can then call the graph from the server function using the
# Output series of commands and give outputId as the graph name
#





#### USER INTERFACE: ================================================
# 
# Define the UI for application.
# This draws the interactive k-means clustering for the iris
# dataset.
#
# This section makes the HTML code which displays the outputs of
# R code computed in the SERVER LOGIC section.
#
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =



ui <- fluidPage(
  headerPanel('Iris k-means clustering'),

  ##### Draw Dropdowns: =============================================
  # This sets the dropdowns for use with the interactive plot
  #
  
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)), #makes a dropdown
    selectInput('ycol', 'Y Variable', names(iris),
                selected = names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9) #makes a manual numeric input box
  ),
  
  ##### Draw Plot 1: ================================================
  # This reserves space for the figure which is processed and 
  # plotted in the output section
  #
  # Related to --> MAKE PLOT 1
  #
  
  mainPanel(
    plotOutput(outputId = 'plot1')
  )
)







#### SERVER LOGIC: ==================================================
#
# Define server logic required to draw a k-means clustering plot
#
# This section does the actual processing of the data which is 
# then loaded by the UI 
#
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

server <- function(input, output) {
   
  
  #### Select Data based on reactive inputs: ========================
  # This function slices the dataframe based on specified inputs in 
  # the UI section
  #
  
  selectedData <- reactive({
    # This graph uses the sliding scales to plot the graph
    iris[, c(input$xcol, input$ycol)] #grabs values from the dropdown
  })
  
  clusters <- reactive({
    kmeans(selectedData(), input$clusters) #grabs values from the numerical input
  })
  
  
  #### Make Plot 1: =================================================
  # This calculates and makes the plot and makes a variable which is 
  # read by the UI input section
  #
  # Related to --> DRAW PLOT 1
  #
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
  })
  
}

#### Run Application: ===============================================
#

shinyApp(ui = ui, server = server)

