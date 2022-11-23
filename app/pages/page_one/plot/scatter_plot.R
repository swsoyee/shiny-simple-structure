output$scatter_plot <- renderEcharts4r({
  iris_data() |> 
    group_by(Species) |> 
    e_chart(Sepal.Length) |> 
    e_scatter(Sepal.Width) |>
    e_tooltip()
})