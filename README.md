

# Airbnb Data Analysis Dashboard

This repository contains a Shiny dashboard designed to analyze Airbnb data in the U.S. The dashboard provides visual insights into host behavior, room types, pricing trends, and geographical influences, offering users a detailed understanding of Airbnb's market dynamics.

---

## Try It Out

[View the live dashboard here](https://sinsniwal.shinyapps.io/airbnb-trends/)

---
## Project Structure

The project is organized into three primary components: **ui**, **server**, and **www**, all integrated into the `app.R` file.

### Directory Structure:

#### **`server`**
The `server` folder contains logic for each tab and handles the backend operations of the dashboard.

- **`home.R`**: Server logic for the home page.
- **`interaction1.R`**: Server logic for correlation heatmap visualization.
- **`interaction2.R`**: Server logic for geographical distribution visualization.
- **`interaction3.R`**: Server logic for average Airbnb price per state visualization.
- **`interaction4.R`**: Server logic for room type pricing analysis.
- **`report.R`**: Server logic for displaying the project report.

#### **`ui`**
The `ui` folder defines the layout and design for each tab in the dashboard.

- **`contact.R`**: Contact information layout.
- **`home.R`**: Introduction and project overview layout.
- **`interaction1.R`**: Layout for correlation analysis.
- **`interaction2.R`**: Layout for geographical distribution analysis.
- **`interaction3.R`**: Layout for average price per state.
- **`interaction4.R`**: Layout for room type pricing analysis.
- **`report.R`**: Layout for displaying the project report.
- **`sidebar.R`**: Layout for the collapsible sidebar navigation.

#### **`www`**
The `www` folder stores static files, preprocessed data, and styling.

- **`AB_US_2023.csv`**: Original Airbnb dataset.
- **`processed_state_avg_price.csv`**: Preprocessed data for visualizing average price per state.
- **`reportRcomp.pdf`**: PDF report generated from the analysis.
- **`style.css`**: Custom CSS for styling the dashboard.

---

## Dashboard Features

1. **Home Page**:  
   Introduces the project, dataset, and navigation instructions.
   - Displays an overview of the analysis.
   - Highlights key insights, such as pricing trends, geographical patterns, and room type distribution.

2. **Key Interactions**:
   - **Interaction 1**: Correlation heatmap showing relationships between variables like price, reviews, and minimum nights.
   - **Interaction 2**: Geographical distribution of Airbnb listings, highlighting popular neighborhoods.
   - **Interaction 3**: Average price per state visualization, with data preprocessing for fast rendering.
   - **Interaction 4**: Room type pricing distribution, allowing dynamic threshold filtering.

3. **Report Tab**:  
   A detailed PDF report is embedded for users to view or download.

4. **Contact Tab**:  
   Displays professional contact information and links.

---

## How It Works

### Preprocessing for Efficiency
To enhance deployment speed, the dataset is preprocessed, and results (like average price per state) are saved in a CSV file (`processed_state_avg_price.csv`). The dashboard reads this preprocessed data for visualization, avoiding the need for intensive computations during runtime.

### Deployment
The dashboard is deployed via **ShinyApps.io**, ensuring accessibility and scalability.

### How to Run Locally

1. **Clone the Repository**:
  ```
  git clone https://github.com/sinsniwal/airbnb-trends
  cd airbnb-trends
  ```

2. **Install Dependencies**:
Make sure you have R and the required libraries installed. Use the following command in R to install dependencies:
```R
install.packages(c("shiny", "shinydashboard", "readr", "dplyr", "ggplot2", "plotly", "sf", "tigris", "viridis"))
```
3. **Run the App**: Open RStudio or your terminal, navigate to the project directory, and run:
```
library(shiny)
runApp("app.R")
```
---

## Example Visualizations

### Screenshot: Average Price per State
![Average Airbnb Price per State](https://github.com/user-attachments/assets/311d6bec-4803-45cf-a72e-5e7bbe7e1c13)

### Screenshot: Room Type Pricing Distribution
![Room Type Pricing](https://github.com/user-attachments/assets/c02db4de-13f7-4a9d-82b1-0eaa780cb8f9)

---


Feel free to clone the repository, modify the code, and explore the Airbnb data in your own way!
