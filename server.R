library(shiny)
filterData<-function(wtInput) mtcars[mtcars$wt<=wtInput,]

shinyServer(
  function(input, output) {
    
    
    #the plot
    output$mpgPlot <- renderPlot({
      x    <- filterData(input$wtInput)[, 1]  # mtcars mpg
      bins <- seq(10, 40, 5)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks=bins,col = 'darkgray', border = 'white')
    })
  }
)