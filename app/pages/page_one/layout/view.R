fluidPage(
  box(
    title = "Iris",
    width = 12,
    fluidRow(
      column(
        width = 12,
        uiOutput("selected_species")
      )
    ),
    fluidRow(
      column(
        width = 6,
        echarts4rOutput("scatter_plot")
      ),
      column(
        width = 6,
        reactableOutput("detail")
      )
    )
  )
)