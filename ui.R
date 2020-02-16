# UI file starts here


# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
Grades <- read.csv("BirkGrades.csv")
colnames(Grades)<-(c("Subject","Grade","Senior","Junior","7th Grade","6th Grade"))


library(shiny)

fluidPage(
  # Application title
  titlePanel("My Kids' Grades"),
  checkboxGroupInput("variable", "By Category:",
                     c("Overall" = "Grade",
                       "Andy Results" = "Senior",
                       "Vicki Results" = "Junior",
                       "Matthew Results" = "7th Grade",
                       "Steven Results" ="6th Grade")),
  tableOutput("data")
)