library(shiny)

shinyUI(pageWithSidebar(
    headerPanel('Motor Trends Cars Feature Clustering'),
    sidebarPanel(
        selectInput('xcol', 'X Feature', names(mtcars)),
        selectInput('ycol', 'Y Feature', names(mtcars),
                    selected=names(mtcars)[[2]]),
        numericInput('clusters', 'Cluster Count', 3,
                     min = 1, max = 9)
    ),
    mainPanel(
        plotOutput('plot1')
    )
))
