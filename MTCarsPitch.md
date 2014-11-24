K-Means Interactive on R's Motor Trend Data
========================================================
author: Michael R. D'Amour  
date: 11/22/14
transition: rotate
navigation: slide

K-Means Demo on Multivariate Data
========================================================
incremental: true
 
MTCars Shiny App lets you
- Interact with standard R K-Means clustering
- Watch clustering decisions animate in real-time
![Figure 1](mtcars_qsec_hp.png)



Interactive Intuition on K-Means
========================================================
transition: concave

R code shows simplicity of clustering use  
Code here reduced for format, eval = FALSE   
Fully reproducible code at github.com/mikedamour

```r
shinyServer(function(input, output) {
    selectedData <- reactive({
        mtcars[, c(input$xcol, 
                   input$ycol)]})
    clusters <- 
        reactive({kmeans(selectedData(), 
                         input$clusters)})
    output$plot1 <- renderPlot({
        plot(selectedData(), 
            col=clusters()$cluster, pch=19)
        points(clusters()$centers, pch=4)})
})
```

Interactive 
===
transition: zoom

- As you choose, data changes immediately
- K-means chooses obvious and not-so-obvious clusters 
- Cluster centers marked prominently  
![Figure 1](mtcars_mpg_wt_6.png)


... and Maybe Some Auto Intuition?
===
transition: rotate

Interesting visualization of relationship of performance to car features. Try various combinations.  
- weight vs. mpg
- horsepower or displacement vs. quarter mile time
- manual/automatic vs. mpg  

Run the app at https://mikedamour.shinyapps.io/ShinyProject.

Enjoy!

*Attribution*  
Thanks to Joe Cheng <joe@rstudio.com> for Iris Data k-means template at the RStudio Gallery site.
