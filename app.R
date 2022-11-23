source(file = "./dependencies.R", local = TRUE, encoding = "UTF-8")
source(file = "app/global.R", local = TRUE, encoding = "UTF-8")

ui <- dashboardPage(
  header = dashboardHeader(
    title = "Dashboard"
  ),
  sidebar = dashboardSidebar(
    sidebarMenu(
      # Page one
      menuItem(
        text = "Page 1",
        tabName = "page_one"
      )
      # Page two
      # ...
    )
  ),
  body = dashboardBody(
    tabItems(
      # Page one
      tabItem(
        tabName = "page_one",
        load.ui("app/pages/page_one/layout/view.R")
      )
      # Page two
      # ...
    )
  )
)

server <- function(input, output) {
  source(file = "app/global.R", local = TRUE, encoding = "UTF-8")
  
  load.files(
    c(
      # Page one
      "app/pages/page_one/dynamic_ui/selected_species.R",
      "app/pages/page_one/data/iris_data.R",
      "app/pages/page_one/table/detail.R",
      "app/pages/page_one/plot/scatter_plot.R"

      # Page two
      # ...
    )
  )
}

# Run the application
shinyApp(ui = ui, server = server)
