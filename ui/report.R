# ui/report.R
report_ui <- tabItem(
  tabName = "report",
  fluidRow(
    box(
      width = 12,
      title = NULL,  # Remove the title if you want the iframe to truly take the whole screen
      solidHeader = FALSE,
      status = "primary",
      style = "padding:0; margin:0; border:none;",  # Remove padding and margins for fullscreen effect
      # Embed the PDF using an iframe with full screen width and height
      tags$iframe(
        src = "reportRcomp.pdf",  # Path to the PDF file
        style = "width:100%; height:100vh; border:none;"  # Full screen height and width
      )
    )
  )
)
