ui <- shinyUI(pageWithSidebar(
  headerPanel("Histogram"),
  sidebarPanel(
    textInput("datavalues", "Enter your data (e.g. counts) here:", "1"),
    textInput("labels", "Enter the category labels here:", "A"),
    textInput("title", "Enter the plot title here:", "Histogram")
  ),
  mainPanel(
    plotOutput(outputId='main_plot')
)
)
)



