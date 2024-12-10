interaction3_ui <- tabItem(
  tabName = "interaction3",
  fluidRow(
    box(
      width = 12,
      title = "Average Airbnb Price per State",
      solidHeader = TRUE,
      status = "primary",
      tags$h4("Geographical Distribution of Average Prices"),
      plotOutput("stateplot", height = "600px"),  # Changed to plotlyOutput for interactivity
      tags$div(
        style = "margin-top: 20px;",
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          "This interactive map provides a visual representation of the ",
          tags$b("average Airbnb price per U.S. state."),
          " The map is color-coded to highlight pricing trends across different regions of the country, making it easy to identify states with higher or lower average prices."
        ),
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          tags$b("Key Insights:"),
          " The visualization reveals regional pricing patterns, with higher averages typically found in popular tourist destinations such as California or New York, and lower averages in states with less demand.",
          " This map helps Airbnb hosts, travelers, and analysts better understand the pricing dynamics across the U.S."
        )
      )
    )
  )
)
