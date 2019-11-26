server <-
function(input,output){
    output$main_plot <- renderPlot({
        x <- input$datavaluesx
        x <- as.numeric(strsplit(x, " ")[[1]])
        y <- input$datavaluesy
        y <- as.numeric(strsplit(y, " ")[[1]])
        labelsy <- strsplit(input$labelsy, "\n")[[1]]
        labelsx <- strsplit(input$labelsx, "\n")[[1]]
        plotTitle <- input$title
        plot(y ~ x, las = 1, ylab=labelsy, xlab=labelsx)
        title(plotTitle)
        lines(y ~ x)
    })
}
