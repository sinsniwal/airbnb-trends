# ui/home.R
home_ui <- tabItem(
  tabName = "home",
  fluidRow(
    box(
      width = 12,
      title = NULL,
      solidHeader = FALSE,
      style = "padding: 20px; background-color: #f7f9fc; border-radius: 10px;",
      div(
        style = "font-family: 'Inter', sans-serif; line-height: 1.8; color: #333;",
        h2("Analysis of New-Age Hospitality Industry from Airbnb", 
           style = "font-weight: bold; margin-bottom: 20px; text-align: center;"),
        h4("Mohit Singh Sinsniwal, Chennai Mathematical Institute", 
           style = "text-align: center; margin-bottom: 10px; color: #555;"),
        h5("December 09, 2024", 
           style = "text-align: center; margin-bottom: 30px; color: #888;"),
        h3("Abstract", style = "margin-top: 20px; font-weight: bold;"),
        p("This analysis explores key factors affecting Airbnb listings, such as host behavior, room types, pricing trends, and geographical influences. Through data visualization and correlation analysis, we uncover insights into how reviews, number of listings, and location influence prices across the U.S. These findings offer valuable information for both hosts and travelers in understanding the dynamics of Airbnb’s marketplace."),
        h3("Introduction", style = "margin-top: 30px; font-weight: bold;"),
        p("Airbnb has completely changed the way people find short-term rentals, making it easy for hosts to offer anything from a shared room to an entire home. As Airbnb continues to grow, it’s important to understand what affects pricing, how hosts manage their listings, and what makes certain places more popular than others."),
        h3("Database Information", style = "margin-top: 30px; font-weight: bold;"),
        
        tags$p(
          style = "font-size: 16px; line-height: 1.5;",
          "The dataset used for this analysis is publicly available on Kaggle and contains detailed information about Airbnb listings across the U.S. ",
          tags$a("View the dataset on Kaggle", href = "https://www.kaggle.com/datasets/kritikseth/us-airbnb-open-data/data?select=AB_US_2023.csv", target = "_blank"), "."
        )
        )
    )
  ),
  # Navigation Guide Box
  box(
    width = 12,
    title = "How to Navigate the Dashboard",
    solidHeader = TRUE,
    status = "warning",
    tags$div(
      tags$h4("Overview of Components"),
      tags$ul(
        style = "font-size: 16px; line-height: 1.8;",
        tags$li(
          tags$b("Home Tab"),
          ": This section provides an introduction to the project, key insights, and navigation instructions."
        ),
        tags$li(
          tags$b("Insight 1: Correlation Analysis"),
          ": Explore a heatmap to understand the relationships between variables like reviews, pricing, and minimum nights."
        ),
        tags$li(
          tags$b("Insight 2: Geographical Distribution"),
          ": Visualize the distribution of Airbnb listings by neighborhoods across the U.S."
        ),
        tags$li(
          tags$b("Insight 3: Average Price per State"),
          ": Analyze the state-level average Airbnb prices using an interactive map."
        ),
        tags$li(
          tags$b("Insight 4: Room Type Pricing"),
          ": Compare pricing trends across room types, such as entire homes, hotel rooms, private rooms, and shared rooms."
        ),
        tags$li(
          tags$b("Report Tab"),
          ": Access a comprehensive PDF report summarizing the analysis and findings."
        ),
        tags$li(
          tags$b("Contact Tab"),
          ": Find author contact details, including email and social media links."
        )
      ),
      tags$p(
        style = "font-size: 16px; line-height: 1.5; margin-top: 20px;",
        "Navigate through the sidebar to explore each section. Click on any tab to dive into the corresponding analysis and interactive visualizations."
      )
    )
  ),    # Key Insights Box
  box(
    width = 12,
    title = "Key Insights",
    solidHeader = TRUE,
    status = "info",
    tags$div(
      tags$ul(
        style = "font-size: 16px; line-height: 1.8;",
        tags$li(
          tags$b("Insight 1: Correlation Analysis"),
          ": We analyzed relationships between variables such as reviews, minimum nights, and price, identifying key factors influencing Airbnb listings."
        ),
        tags$li(
          tags$b("Insight 2: Geographical Distribution of Listings"),
          ": Neighborhoods like Brooklyn and Manhattan emerged as hotspots for Airbnb listings, showcasing their popularity among travelers."
        ),
        tags$li(
          tags$b("Insight 3: Average Price per State"),
          ": Our analysis revealed significant price differences across states, with California and Nevada standing out as high-demand regions."
        ),
        tags$li(
          tags$b("Insight 4: Room Type Distribution and Pricing"),
          ": Entire homes and hotel rooms exhibited a broader price range, while private and shared rooms remained more budget-friendly."
        )
      )
    )
  )
)
