library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$datedue<-reactive({as.Date(input$date1+(273-21+input$duration),
                                      origin = "1970-01-01")})
})

