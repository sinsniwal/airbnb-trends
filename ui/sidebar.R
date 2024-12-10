# ui/sidebar.R
sidebar_ui <- dashboardSidebar(
  width = 220,
  sidebarMenu(
    id = "sidebar",
    menuItem("Home", tabName = "home", icon = icon("home")),
    menuItem("Correlation Analysis", tabName = "interaction1", icon = icon("chart-bar")),
    menuItem("Geographical Distribution", tabName = "interaction2", icon = icon("chart-line")),
    menuItem("Price per State", tabName = "interaction3", icon = icon("map")),
    menuItem("Room Type Distribution", tabName = "interaction4", icon = icon("sliders-h")),
    menuItem("Report", tabName = "report", icon = icon("file-alt")),
    menuItem("Contact", tabName = "contact", icon = icon("envelope"))
  ),
  
  # Contact Info at the bottom of Sidebar
  div(
    class = "sidebar-contact",
    h5("Author: Mohit Singh Sinsniwal"),
    p("Email:mohits.mds2024@cmi.ac.in"),
  )
)
