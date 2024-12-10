interaction2_server <- function(input, output, session) {
  output$map_plot <- renderPlot({
    library(readr)
    library(dplyr)
    library(ggplot2)
    library(viridis)
    library(maps)  # For US states data
    cat("Map plot\n")  # Debugging
    cat("Top N Value:", session$userData$top_n_value, "\n")  # Debugging
    mytop_n_value <- session$userData$top_n_value
    # Load the dataset  
    data <- read_csv(
      "www/AB_US_2023.csv", 
      col_types = cols(
        .default = "d",
        name = "c",
        host_name = "c",
        neighbourhood_group = "c",
        neighbourhood = "c",
        room_type = "c",
        last_review = "c",
        city = "c"
      )
    )

    # Step 1: Identify the top 5 neighborhoods
    top_neighbourhoods <- data %>%
      filter(!is.na(neighbourhood_group) & neighbourhood_group != "Other Cities") %>%  
      group_by(neighbourhood_group) %>%
      summarise(total_listings = n()) %>%
      top_n(mytop_n_value, total_listings) %>%
      pull(neighbourhood_group)

    # Step 2: Categorize the data
    clean_data <- data %>%
      mutate(neighbourhood_group = case_when(
        is.na(neighbourhood_group) ~ "Other",
        neighbourhood_group == "Other Cities" ~ "Other",
        neighbourhood_group %in% top_neighbourhoods ~ neighbourhood_group,
        TRUE ~ "Other"
      ))

    # Step 3: Define colors
    colors <- c(viridis::viridis(mytop_n_value), "grey")

    # Step 4: Load US states map data
    states <- map_data("state")

    # Step 5: Plot the map
    ggplot() + 
      geom_polygon(data = states, aes(x = long, y = lat, group = group),
                   fill = "white", color = "grey80", size = 0.2) +
      
      # Add points for neighborhoods
      geom_point(data = clean_data, 
                 aes(x = longitude, y = latitude, 
                     color = neighbourhood_group, 
                     size = number_of_reviews, 
                     alpha = 0.6)) +
      
      # Customize colors
      scale_color_manual(values = colors, name = "Neighbourhood Group",
                         labels = c(top_neighbourhoods, "Other")) +
      
      # Adjust size and transparency
      scale_size_continuous(range = c(1, mytop_n_value), guide = "none") +
      scale_alpha(range = c(0.4, 0.8), guide = "none") +
      
      # Map projection and theme
      coord_map() +
      theme_void() +
      
      # Add labels
      labs(
        title = paste("Top", mytop_n_value, "Neighborhoods by Listings"),
        subtitle = "Grey indicates 'Other' neighborhoods",
        caption = "Data Source: Airbnb"
      ) +
      
      theme(
        plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
        plot.subtitle = element_text(size = 12, hjust = 0.5),
        plot.caption = element_text(hjust = 0.5, face = "italic")
      )
  })
}
