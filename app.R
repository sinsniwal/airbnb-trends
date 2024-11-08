# app.R
library(shiny)
library(shinydashboard)

# Source UI and Server Modules
source("ui/sidebar.R")
source("ui/home.R")
source("ui/interaction1.R")
source("ui/interaction2.R")
source("ui/report.R")
source("ui/contact.R")
source("server/interaction1.R")
source("server/interaction2.R")
source("server/report.R")

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
    includeCSS("www/style.css"),  # Custom styling
    tabItems(
      home_ui,           # Home page UI object
      interaction1_ui,   # Interaction 1 page UI object
      interaction2_ui,   # Interaction 2 page UI object
      report_ui,         # Report page UI object
      contact_ui         # Contact page UI object
    )
  )
)

# Define Server
server <- function(input, output, session) {
  # Call each interaction server module
  interaction1_server("interaction1")  # Call module with namespace "interaction1"
  interaction2_server("interaction2")  # Call module with namespace "interaction2"
  report_server("report")              # Call report server module
}

# Run the application 
shinyApp(ui = ui, server = server)
