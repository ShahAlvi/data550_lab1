server <-
function(input,output){
    output$main_plot <- renderPlot({
        data <- input$datavalues
        data <- as.numeric(strsplit(data, " ")[[1]])
        labels <- strsplit(input$labels, " ")[[1]]
        plotTitle <- input$title
        names(data)=labels
        hist(data, main = plotTitle)
        #title(plotTitle)
    })
}
