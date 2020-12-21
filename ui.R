
library(shiny)
library(shinythemes)
library(glmulti)

# Define UI for application that runs an interactive linear regression

shinyUI(fluidPage(
  
    # Application title
    titlePanel("Data Development Course Project"),
    #Theme
    theme = shinytheme("cerulean"),
    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(
            
            selectInput("dv", label = h4("Dependent Variable"), choices = c("Murder"), selected = 1),
        
            checkboxGroupInput("iv", label = h4("Independent Variables"), 
                           choices = list("Population"="Population","Illiteracy"="Illiteracy",
                                          "Life Exp"="LifeExp","Income"= "Income", "HS Grad"="HSGrad",
                                          "Area"="Area"), selected = "Illiteracy")), 
        # Tabs on main page
        mainPanel(
          tabsetPanel(
            tabPanel("Data", DT::dataTableOutput('tbl')),
            tabPanel("Summary", verbatimTextOutput("Summary")),
            tabPanel("Correlations", verbatimTextOutput("Correlations")),
            tabPanel("Results", verbatimTextOutput("Results")),
            tabPanel("Plots", plotOutput("distPlot")),
            tabPanel("Best Model", verbatimTextOutput("Best Model"), 
                     p(em(strong("Best model selection based on Akaike Information Criteria"))))
            )
      )
    )
  )
)
