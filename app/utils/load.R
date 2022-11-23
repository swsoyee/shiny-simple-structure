load.files <- function(paths) {
  for (path in paths) {
    source(file = path, local = TRUE, encoding = "UTF-8")
  }
}

load.ui <- function(path) {
  source(file = path, local = TRUE, encoding = "UTF-8")$value
}
