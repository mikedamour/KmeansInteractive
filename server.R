library(RColorBrewer)
palette(brewer.pal(8, "Set2"))
shinyServer(function(input, output, session) {
    selectedData <- reactive({mtcars[, c(input$xcol, input$ycol)]})
    clusters <- reactive({kmeans(selectedData(), input$clusters)})
    output$plot1 <- renderPlot({
        par(mar = c(5.1, 4.1, 0, 1))
        plot(selectedData(), col = clusters()$cluster, pch = 19, cex = 3)
        points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
    })
})
