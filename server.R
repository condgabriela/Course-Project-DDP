
library(shiny)
library(shinythemes)
library(glmulti)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  #read data
  state_info<<-as.data.frame(state.x77)
  names(state_info)<-gsub(" ", "", names(state_info))
  
    # Data output
    output$tbl = DT::renderDataTable({
      DT::datatable(state_info, options = list(lengthChange = FALSE))
    })
    
    # Dataframe Summary
    
    output$Summary <- renderPrint({
      str(state_info)
      
    })
    
    # Correlations
    
    output$Correlations <- renderPrint({
      round(cor(state_info),2)
      
    })
    
    # Regression output
    ### create modelo
    
    modelo<- reactive({
      resultado<-c(input$dv)
      variables<-c(input$iv)
      dependientes<-as.matrix(state_info[,variables])
      modelo <- lm(state_info[,input$dv] ~ dependientes)
      names(modelo$coefficients) <- c("Intercept", variables)
      modelo
       
    })
    
    
    output$Results <- renderPrint({
      
      summary(modelo())
      
    })
    
    output$distPlot <- renderPlot({
      
      par(mfrow=c(2,2))
      
      plot(modelo())
    })
    
    
    output$'Best Model' <- renderPrint({
      best_model<-lm(Murder~., data=state_info)
      step_best_model<-step(best_model)
      summary(step_best_model)
    })
    
    
    
    
})
