interaction4_ui <- tabItem(
  tabName = "interaction4",
  fluidRow(
    box(
      width = 12,
      title = "Room Type Distribution and Pricing",
      solidHeader = TRUE,
      status = "primary",
      tags$h4("Analyze Pricing Trends by Room Type"),
      
      # Slider for calculated_host_listings_count threshold
      sliderInput(
        inputId = "min_host_count",
        label = "Select the minimum number of host listings threshold:",
        min = 1, 
        max = 50, 
        value = 10,  # Default value
        step = 1
      ),
      
      # Price distribution plot
      plotlyOutput("priceplot", height = "600px"),
      
      tags$div(
        style = "margin-top: 20px;",
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          "This plot visualizes the ",
          tags$b("price distribution by room type"),
          " across various Airbnb listings. It uses a kernel density estimate to compare the pricing trends for different types of accommodations, such as entire homes/apartments, hotel rooms, private rooms, and shared rooms."
        ),
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          tags$b("Key Insights:"),
          " The analysis highlights how pricing trends differ among room types. Entire homes and hotel rooms show a wider range of prices, often skewing higher, while private and shared rooms tend to offer more budget-friendly options."
        ),
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          "Use the slider above to filter listings based on the ",
          tags$b("calculated host listings count."),
          " This ensures that the data focuses on hosts managing a minimum number of listings, which can provide more reliable insights into pricing trends."
        )
      )
    )
  )
)
