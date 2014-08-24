library(shiny)
shinyUI(fluidPage(
  
  #title
  headerPanel("Car weight and mpg"),
  
  #sidebar slider
  sidebarLayout(
    sidebarPanel(
      sliderInput("wtInput",
                  "max weight of car:",
                  min=1.6,
                  max=5.5,
                  value=3.5)
  ),
  mainPanel(
    plotOutput('mpgPlot')
    
  )
  )
))