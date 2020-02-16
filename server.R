
#server file starts here

#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
Grades <- read.csv("BirkGrades.csv")
colnames(Grades)<-(c("Subject","Grade","Senior","Junior","7th Grade","6th Grade"))

library(shiny)

function(input, output, session) {
  output$data <- renderTable({
    Grades[, c("Subject", input$variable), drop = FALSE]
  }, rownames = TRUE)
}

# shinyApp(ui, server)