# ui/report.R
report_ui <- tabItem(
  tabName = "report",
  fluidRow(
    box(
      width = 12,
      title = "Detailed Report",
      p("Here is the R Markdown report or other analysis.")
    )
  )
)
