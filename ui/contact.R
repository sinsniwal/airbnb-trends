# ui/contact.R
contact_ui <- tabItem(
  tabName = "contact",
  fluidRow(
    box(
      width = 12,
      title = "Contact Information",
      h4("Email:"),
      p("your.email@example.com"),
      h4("LinkedIn:"),
      tags$a("Connect on LinkedIn", href = "https://www.linkedin.com/in/yourprofile", target = "_blank"),
      h4("Twitter:"),
      tags$a("Follow on Twitter", href = "https://twitter.com/yourprofile", target = "_blank")
    )
  )
)
