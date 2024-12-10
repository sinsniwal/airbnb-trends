# ui/contact.R
contact_ui <- tabItem(
  tabName = "contact",
  fluidRow(
    div(
      style = "width: 100%; display: flex; flex-direction: column; align-items: center; padding: 40px; background-color: #f7f9fc; border-radius: 10px;",
      div(
        style = "text-align: center; margin-bottom: 30px;",
        h2("Get in Touch", style = "color: #333; font-weight: bold; margin-bottom: 10px;"),
        p(
          "I'm always open to connect! Visit my webpage, reach out via email, or follow me on LinkedIn or Twitter.",
          style = "color: #555; font-size: 16px; margin-bottom: 0;"
        )
      ),
      div(
        style = "display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; width: 100%; max-width: 800px;",
        # Webpage Card
        div(
          style = "display: flex; flex-direction: column; align-items: center; background: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);",
          tags$svg(
            xmlns = "http://www.w3.org/2000/svg",
            height = "40",
            viewBox = "0 0 24 24",
            width = "40",
            fill = "#007bff",
            tags$path(d = "M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-2.41 0-4.5-1.72-4.9-4H8v-2h-.89C7.4 9.72 9.49 8 12 8s4.5 1.72 4.9 4H16v2h-.9c-.4 2.28-2.49 4-4.9 4zm0-14c-1.63 0-3.06.79-3.93 2H10v2H6v-4h2.1C9.24 5.55 10.56 5 12 5c3.53 0 6.43 2.61 6.92 6h-2.02c-.45-2.28-2.48-4-4.9-4z")
          ),
          h4("Webpage", style = "color: #333; margin-bottom: 10px;"),
          tags$a(
            "Visit My Webpage",
            href = "https://sinsniwal.me",
            target = "_blank",
            style = "color: #007bff; text-decoration: none; font-size: 14px;"
          )
        ),
        # Email Card
        div(
          style = "display: flex; flex-direction: column; align-items: center; background: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);",
          tags$svg(
            xmlns = "http://www.w3.org/2000/svg",
            height = "40",
            viewBox = "0 0 24 24",
            width = "40",
            fill = "#007bff",
            tags$path(d = "M20 4H4C2.9 4 2 4.9 2 6v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 2-8 5-8-5h16zm0 12H4V8l8 5 8-5v10z")
          ),
          h4("Email", style = "color: #333; margin-bottom: 10px;"),
          tags$a("mohit.sinsniwal@gmail.com", href = "mailto:mohit.sinsniwal@gmail.com", style = "color: #007bff; text-decoration: none; font-size: 14px; margin-bottom: 5px;"),
          tags$a("mohits.mds2024@cmi.ac.in", href = "mailto:mohits.mds2024@cmi.ac.in", style = "color: #007bff; text-decoration: none; font-size: 14px;")
        ),
        # LinkedIn Card
        div(
          style = "display: flex; flex-direction: column; align-items: center; background: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);",
          tags$svg(
            xmlns = "http://www.w3.org/2000/svg",
            height = "40",
            viewBox = "0 0 24 24",
            width = "40",
            fill = "#007bff",
            tags$path(d = "M19 3A2 2 0 0 1 21 5V19A2 2 0 0 1 19 21H5A2 2 0 0 1 3 19V5A2 2 0 0 1 5 3H19M8 17V10H5V17H8M6.5 8.75A1.25 1.25 0 0 0 7.75 7.5A1.25 1.25 0 0 0 6.5 6.25A1.25 1.25 0 0 0 5.25 7.5A1.25 1.25 0 0 0 6.5 8.75M19 17V13.5C19 11.5 17.5 10 15.5 10C14.46 10 13.5 10.54 13 11.34V10H10V17H13V13.5C13 12.67 13.67 12 14.5 12S16 12.67 16 13.5V17H19Z")
          ),
          h4("LinkedIn", style = "color: #333; margin-bottom: 10px;"),
          tags$a("Connect on LinkedIn", href = "https://www.linkedin.com/in/sinsniwal", target = "_blank", style = "color: #007bff; text-decoration: none; font-size: 14px;")
        )
      )
    )
  )
)
