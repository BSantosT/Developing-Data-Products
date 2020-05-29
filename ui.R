#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    # Application title
    titlePanel("Meters & Inches converter"),
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("length",
                        "Legth in meters:",
                        min = 0.01,
                        max = 100,
                        value = 1),
            sliderInput("length2",
                        "Legth in inches:",
                        min = 1,
                        max = 100,
                        value = 1)
        ),
        # Show a plot of the generated distribution
        mainPanel(
            h3("Length in inches:"), 
            textOutput("text"),
            h3("Length in meters:"), 
            textOutput("text2")
        )
    )
))
