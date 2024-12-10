interaction2_ui <- tabItem(
  tabName = "interaction2",
  fluidRow(
    box(
      width = 12,
      title = "Geographical Distribution of Listings by Neighborhood",
      solidHeader = TRUE,
      status = "primary",
      sliderInput(
        inputId = "top_n_value",
        label = "Select the number of top neighborhoods:",
        min = 1, 
        max = 10, 
        value = 5, 
        step = 1
      ),
      plotOutput("map_plot", height = "500px"),
      tags$div(
        style = "margin-top: 10px;",
        tags$p(
          style = "font-size: 14px; line-height: 1.5;",
          "This interactive map displays the top neighborhoods in the Airbnb dataset based on their total number of listings. Users can interact with the map to explore the data dynamically."
        ),
        tags$p(
          style = "font-size: 14px; line-height: 1.5;",
          tags$b("Key Highlights:"),
          "We explored the geographical spread of Airbnb listings to understand the busiest areas for hosts in the U.S. Certain neighborhoods like Brooklyn and Manhattan stood out as major hubs for Airbnb listings, showcasing their popularity among travelers."
        )
      )
    )
  )
)
