require(devtools)
update.packages(ask = FALSE, checkBuilt = TRUE)
packages <- c("dplyr","arrow","validate","DataExplorer","DT","purrr","dlookr","survminer",
       "quarto","ggplot2","plotly","scales","formattable","naniar","duckdb","DBI","here",
       "grDevices","visdat","mice","tidyr","shiny","consort","parallel","MatchIt",
       "survival","table1","tab","forestmodel","gtsummary","survRM2")

package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)
