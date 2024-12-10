# app.R
library(shiny)
library(shinydashboard)
library(plotly)
library(splancs)
library(tidyr)
library(mapproj)

# Source UI and Server Modules
source("ui/sidebar.R")
source("ui/home.R")
source("ui/interaction1.R")
source("ui/interaction2.R")
source("ui/interaction3.R")
source("ui/interaction4.R")
source("ui/report.R")
source("ui/contact.R")
source("server/interaction1.R")
source("server/interaction2.R")
source("server/interaction3.R")
source("server/interaction4.R")
source("server/report.R")

server <- function(input, output, session) {

  cat("Server started\n")
  observe({
    if (is.null(input$sidebar)) {
      session$userData$active_tab <- "home"
    }
    else {
      session$userData$active_tab <- input$sidebar
    }
    
    if (is.null(input$top_n_value)) {
      session$userData$top_n_value <- 5
    }
    else {
      session$userData$top_n_value <- input$top_n_value
    }
    if (is.null(input$min_host_count)) {
      session$userData$min_host_count <- 10
    }
    else {
      session$userData$min_host_count <- input$min_host_count
    }
    
    cat("Active tab:", input$sidebar, "\n")  # Debugging
    interaction1_server("interaction1",output,session)
    interaction2_server("interaction2",output,session)
    interaction3_server("interaction3",output,session)
    interaction4_server("interaction4",output,session)
  })
  cat("Activedone\n")  # Debugging
  
  # Call each interaction server module

}
# Define UI
ui <- dashboardPage(
  dashboardHeader(disable = TRUE),  # Minimalistic design
  
  # Sidebar UI directly referenced as object
  dashboardSidebar(
    width = 220,
    sidebar_ui  # Use the sidebar_ui object directly
  ),
  
  # Body UI where each tab item is referenced as an object
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", href = "https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap"),
      tags$link(rel = "stylesheet", type = "text/css", href = "www/style.css")
    ),
    tabItems(
      home_ui,
      interaction1_ui,
      interaction2_ui,
      interaction3_ui,
      interaction4_ui,
      report_ui,
      contact_ui
    )
  )
)

# Define Server


# Run the application 
shinyApp(ui = ui, server = server)

