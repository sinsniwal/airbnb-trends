interaction3_server <- function(input, output, session) {
  output$stateplot <- renderPlot({
    library(readr)
    library(ggplot2)
    library(dplyr)
    library(maps)
    
    # Load the preprocessed data
    state_avg_price <- read_csv("www/processed_state_avg_price.csv")
    
    # Convert state names in processed data to lowercase
    state_avg_price <- state_avg_price %>%
      mutate(region = tolower(NAME))  # Add a `region` column for merging
    
    # Load U.S. states map data
    states <- map_data("state")
    
    # Merge map data with average price data
    us_states_avg <- left_join(states, state_avg_price, by = "region")
    
    # Plot the map
    ggplot(us_states_avg, aes(x = long, y = lat, group = group, fill = avg_price)) +
      geom_polygon(color = "grey40", size = 0.3) +
      scale_fill_gradientn(
        colors = c("#00b894", "#00cec9", "#fab1a0", "#ff7675"),
        name = "Avg Price",
        na.value = "grey85"
      ) +
      coord_map() +
      theme_void() +
      labs(
        title = "Average Airbnb Price per State",
        subtitle = "Based on processed data",
        caption = "Data Source: Airbnb"
      ) +
      theme(
        plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
        plot.subtitle = element_text(size = 12, hjust = 0.5),
        plot.caption = element_text(hjust = 0.5, face = "italic"),
        legend.position = "right"
      )
  })
}
