ui <- shinyUI(pageWithSidebar(
  headerPanel("Scatterplot"),
  sidebarPanel(
    textInput("datavaluesx", "Enter your x data (e.g. counts) here:", "1"),
    textInput("datavaluesy", "Enter your y data (e.g. counts) here:", "1"),
    textInput("labelsy", "Enter the y category labels here:", "A"),
    textInput("labelsx", "Enter the x category labels here:", "A"),
    textInput("title", "Enter the plot title here:", "Scatterplot")
  ),
  mainPanel(
    plotOutput(outputId='main_plot')
)
)
)



