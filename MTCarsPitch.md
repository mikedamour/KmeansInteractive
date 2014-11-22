K-Means Demo on MTCars Data
========================================================
author: Michael R. D'Amour  
date: 11/22/14

K-Means Demo on Multivariate Data
========================================================

 
MTCars Shiny App lets you
- Interact with the standard R K-Means clustering algorithm
- Watch clustering decisions in real time on lots of data
![Figure 1](mtcars_qsec_hp.png)



Intuition on K-Means
========================================================
The MTcars K-Means App allows  

- Any var of the R-builtin *mtcars* dataset  
    - for x-axis  
    - for y-axis 
    - using slide-out menus
- Choice of number of clusters  

(In a kinder world, RPresenter would allow me to paste a .png here or run Shiny locally and echo here.)

Interactive 
===
- As you choose, data changes immediately
- K-means chooses obvious and not-so-obvious clusters 
- Cluster centers marked prominently  

![Figure 1](mtcars_mpg_wt_6.png)


Auto Intuition, Maybe?
===
Interesting visualization of relationship of performance to car features. Try various combinations.  
- weight vs. mpg
- horsepower or displacement vs. quarter mile time
- manual/automatic vs. mpg  

Run the app at https://mikedamour.shinyapps.io/ShinyProject.

Enjoy!

*Attribution*  
Thanks to Joe Cheng <joe@rstudio.com> for Iris Data k-means template at the RStudio Gallery site.
