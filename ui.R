library(shiny)

shinyUI(navbarPage("mpg ~ wt",
                   tabPanel("Application",
                            sidebarPanel(
                                h4(),
                                h4(),
                                h4(),
                                sliderInput('wt', 'Input weight of car :',value = 3, min = 1.5, max = 5.4, step = 0.01)
                                ),
                            mainPanel(
                                        h4('Predict Miles per gallon consumption for you car\n'),
                                        plotOutput('mtcarsplot')
                                     )
                            
                            
                            ),
                   
                   tabPanel("Documentation",
                            
                            h3('Supporting documentation for application \"mpg ~ wt\"'),
                            h4( "About"),
                            p('Application makes prediction for miles per
                              gallon consumption for car based on car weight.'),
                            p('Prediction calculated using simple linear regression \"mpg ~ wt\".'),
                            
                            h4( "Input value"),
                            p('To get a predictin you need to set weight of the car in lb/1000.'),
                            p('You can do it by using slider on the left side of Apllication tab'),
                            h4( "Predicted value"),
                            p('Predicted value Miles/(US) gallon shows in graphics by big red dot and by text in the graphic')
                            
                            
                            )))


# shinyUI(pageWithSidebar(
#     headerPanel("Consumption prediction: mpg ~ wt "),
#     
#     sidebarPanel(
#         h5('Predict Miles per gallon consumption for you car'),
#         sliderInput('wt', 'Input weight of car :',value = 3, min = 1.5, max = 5.4, step = 0.01)
#     ),
#     mainPanel(
#         plotOutput('mtcarsplot'),
#         h5('Predict Miles per gallon consumption for you car 
#            Predict Miles per gallon consumption for you car 
#            Predict Miles per gallon consumption for you car 
#            Predict Miles per gallon consumption for you car 
#            Predict Miles per gallon consumption for you car ')
#     )
# ))