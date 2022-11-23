output$detail <- renderReactable({
  reactable(iris_data())
})
