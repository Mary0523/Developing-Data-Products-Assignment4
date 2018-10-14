library(shiny)
shinyUI(fluidPage(
  titlePanel("Calculate Due Date for Your Baby"),
  sidebarLayout(
    sidebarPanel(
       dateInput("date1", "Enter the date of the first day of your last menstrual period(LMP):"),
       numericInput("duration","Enter your average cycle duration",value=28),
       submitButton("Get my due date")
    ),
    mainPanel(
       h3("Your baby's birthday:"),
       textOutput("datedue"),
       h6("An estimated due date (EDD) is a “best guess” as to when baby might be born based on a conception calculator. However, only 4% of babies are born on their due date! Whereas 80% of babies are born within the window of two weeks before and two weeks after your estimated due date"),
       img(src='https://resources.stuff.co.nz/content/dam/images/1/j/l/j/e/t/image.related.StuffLandscapeSixteenByNine.620x349.1ntr05.png/1515623893992.jpg', align = "right")
    )
  )
))

