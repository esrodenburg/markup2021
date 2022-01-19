library(shiny)

# Define ui 
ui <- fluidPage(
  navbarPage("Iris data", 
             tabPanel("Data overview", 
                      titlePanel("This page gives an overview of the Iris data"), 
                      sidebarLayout(
                        sidebarPanel = (
                          numericInput(inputId = "obs", 
                                       label = "Number of observations to view:", 
                                       value = 10)
                      ), 
                      mainPanel(
                        verbatimTextOutput("summary"),
                        tableOutput("view")
                      ))),
             tabPanel("Correlations", 
                      titlePanel("This page shows the relations between the variables in the Iris data"), 
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("xCol", "X", c("Sepal.Length", "Sepal.Width", 
                                                     "Petal.Length", "Petal.Width")), 
                          selectInput("yCol", "Y", c("Sepal.Length", "Sepal.Width", 
                                                     "Petal.Length", "Petal.Width"))
                        ), 
                        mainPanel(plotOutput(outputId = "scatterplot"))
                      ))
  )
)
# Define server 
server <- function(input, output) {
  output$summary <- renderPrint({
    dataset <- (iris)
    summary(dataset)
  })
  
  output$view <- renderTable({
    head(iris, n = input$obs)
  })
  
  df <- reactive({iris[,c(input$xCol, input$yCol)]})
  
  output$scatterplot <- renderPlot({plot(df(), pch = 20, cex = 3, col = "blue",
                                  main = "Iris dataset")})
}
# Run the application 
shinyApp(ui = ui, server = server)
