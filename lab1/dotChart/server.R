server <-
function(input,output){
    output$main_plot <- renderPlot({
        data <- input$datavalues
        data <- as.numeric(strsplit(data, " ")[[1]])
        labels <- strsplit(input$labels, " ")[[1]]
        plotTitle <- input$title
        dotchart(data, pch=16, labels=labels)
        title(plotTitle)
    })
}
