library(shiny)

shinyUI(pageWithSidebar(
    headerPanel('Motor Trends mtcars Feature Clustering'),
    sidebarPanel(
        selectInput('xcol', 'X Feature', names(mtcars), 
                    selected = names(mtcars)[[7]]),
        selectInput('ycol', 'Y Feature', names(mtcars),
                    selected = names(mtcars)[[4]]),
        sliderInput('clusters', 'Cluster Count', min = 1, max = 9,
                    value = 5, ticks = TRUE, 
                    animate = TRUE, round = TRUE)
    ),
    mainPanel(
        plotOutput('plot1')
    )
))

# numericInput('clusters', 'Cluster Count', 3,
#             min = 1, max = 9),