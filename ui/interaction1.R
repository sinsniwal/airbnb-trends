interaction1_ui <- tabItem(
  tabName = "interaction1",
  fluidRow(
    box(
      width = 12,
      title = "Correlation Analysis Heatmap",
      solidHeader = TRUE,
      status = "primary",
      tags$h4("Explore Relationships Between Variables"),
      plotlyOutput("heatmap", height = "500px"),
      tags$div(
        style = "margin-top: 20px;",
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          "This heatmap provides a visual representation of the relationships between key variables such as ",
          tags$b("number of reviews, reviews per month, minimum nights, and price."),
          " By analyzing these correlations, we can uncover important insights into the dynamics of Airbnb listings."
        ),
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          tags$b("Highlights:"),
          " The analysis identifies significant correlations, such as the strong relationship between the total number of reviews and reviews per month, while also highlighting factors with minimal impact on pricing."
        )
      )
    )
  )
)
