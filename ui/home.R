# ui/home.R
home_ui <- tabItem(
  tabName = "home",
  fluidRow(
    box(
      width = 12,
      title = NULL,
      h2("Welcome to the Dashboard"),
      p("Explore the features available in this dashboard to understand insights."),
      h4("Navigation Overview"),
      tags$ul(  # Use tags$ul to create an unordered list
        tags$li("Interaction 1: Data Visualization"),
        tags$li("Interaction 2: Analysis Tools"),
        tags$li("Interaction 3: Mapping"),
        tags$li("Interaction 4: Interactive Filters"),
        tags$li("Report: Detailed Report"),
        tags$li("Contact: Reach Out")
      )
    )
  )
)
