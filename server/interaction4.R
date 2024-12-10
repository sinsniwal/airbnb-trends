interaction4_server <- function(input, output, session) {
  output$priceplot <- renderPlotly({
    library(readr)
    library(dplyr)
    library(reshape2)
    library(plotly)
    
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
    clean_data_filtered <- data %>%
      filter(price < 1000 & calculated_host_listings_count > session$userData$min_host_count & number_of_reviews > 0)
    
    # Define custom colors
    custom_colors <- c("Entire home/apt" = "#FF9999",
                       "Hotel room" = "#99CC99",
                       "Private room" = "#66CCFF",
                       "Shared room" = "#CC99FF")
    
    # Plot the kernel density estimate for each room type with customized colors
    ggplot(clean_data_filtered, aes(x = price, fill = room_type, color = room_type)) +
      geom_density(alpha = 0.5, size = 0.3) +  # Adjust the size parameter for smaller borders
      
      # Custom color palette
      scale_fill_manual(values = custom_colors) +
      scale_color_manual(values = custom_colors) +
      
      # Set title and labels
      ggtitle('Price Probability Distribution by Room Type') +
      xlab('Price') +
      ylab('Density') +
      
      # Add theme for visual adjustments
      theme_minimal(base_size = 14) +
      
      # Customize legend and plot text
      theme(legend.title = element_text(size = 12),
            legend.text = element_text(size = 10),
            plot.title = element_text(size = 16, hjust = 0.5),
            axis.title = element_text(size = 14))
  })
}
