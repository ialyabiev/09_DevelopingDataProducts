library(shiny)
library(UsingR)

fit <- lm(mtcars$mpg ~ mtcars$wt)

pred_y <- function(x){
        round(fit$coef[1] + x*fit$coef[2],3)
        
    }

shinyServer(
    function(input, output) {
        output$mtcarsplot <- renderPlot({
             x = input$wt
             y= pred_y(x)
             plot(mtcars$wt,mtcars$mpg, xlab='weight', ylab = "mpg",type = "p",
                  col=3, pch=21, cex = 1.3)
             abline(h=y, col = "lightblue")
             abline(v=x, col = "lightblue")
             points( x, y, pch=19, cex = 2.5, col = "red")
             text(3.5, 30, paste("Predicted mpg = ", mean(y)),cex=2)
         })
    }
)