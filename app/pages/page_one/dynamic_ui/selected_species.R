output$selected_species <- renderUI({
  choices <- as.vector(unique(global$iris$Species))
  
  pickerInput(
    inputId = "selected_species",
    label = "Species",
    choices = choices,
    selected = choices,
    multiple = TRUE
  )
})
