interaction1_server <- function(input, output, session) {
  output$heatmap <- renderPlotly({
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
    
    # Select numeric columns
    is_numeric_data <- sapply(data, is.numeric)
    data_numeric <- data[, is_numeric_data]
    
    # Dynamically check and drop longitude/latitude
    if ("longitude" %in% colnames(data_numeric)) {
      data_numeric <- data_numeric %>% select(-longitude)
    }
    if ("latitude" %in% colnames(data_numeric)) {
      data_numeric <- data_numeric %>% select(-latitude)
    }
    
    # Compute the correlation matrix
    cormat <- round(cor(data_numeric, use = "complete.obs"), 2)
    
    # Get the upper triangle of the correlation matrix
    get_upper_tri <- function(cormat) {
      cormat[lower.tri(cormat)] <- NA
      return(cormat)
    }
    upper_tri <- get_upper_tri(cormat)
    
    # Melt the upper triangle correlation matrix
    melted_cormat <- reshape2::melt(upper_tri, na.rm = TRUE)
    
    # Create the Plotly heatmap directly
    plot_ly(
      data = melted_cormat,
      x = ~Var2,
      y = ~Var1,
      z = ~value,
      type = "heatmap",
      colors = colorRamp(c("cyan", "white", "red")),
      hoverinfo = "x+y+z",
      colorbar = list(title = "Correlation")
    ) %>%
      layout(
        title = list(
          text = "Correlation Heatmap",
          font = list(size = 16, family = "Arial")
        ),
        xaxis = list(
          title = "",
          automargin = TRUE,
          tickangle = -45
        ),
        yaxis = list(
          title = "",
          automargin = TRUE
        ),
        margin = list(l = 60, r = 30, b = 50, t = 60)  # Adjusts layout margins
      )
  })
}
