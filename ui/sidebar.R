# ui/sidebar.R
sidebar_ui <- dashboardSidebar(
  width = 220,
  sidebarMenu(
    menuItem("Home", tabName = "home", icon = icon("home")),
    menuItem("Interaction 1", tabName = "interaction1", icon = icon("chart-bar")),
    menuItem("Interaction 2", tabName = "interaction2", icon = icon("chart-line")),
    menuItem("Interaction 3", tabName = "interaction3", icon = icon("map")),
    menuItem("Interaction 4", tabName = "interaction4", icon = icon("sliders-h")),
    menuItem("Report", tabName = "report", icon = icon("file-alt")),
    menuItem("Contact", tabName = "contact", icon = icon("envelope"))
  )
)
