checkSetup <- function(cran_packages,bioc_packages) {
  library(cli)
  cat("\n--------------------------------------\n")
  cat(style_bold(col_magenta("\n***Installing General Packages***\n\n")))
  not <- c(); not2 <- c()
  packages1 <- c(cran_packages, bioc_packages)#, "Test")
  for (i in 1:length(packages1)){
    if(requireNamespace(packages1[i], quietly = TRUE)==F) {
      cat(paste(style_bold(col_red(packages1[i])), "has not been installed\n"))
      not <- c(not,i)
    } else {
      suppressWarnings(suppressMessages(library(as.character(packages1[i]), character.only = TRUE)))
      cat(col_yellow(packages1[i]), "is loaded!\n")
    }
  }
  cat("\n--------------------------------------\n")
  if (length(not) > 0){
    cat(style_bold(bg_red("\n  **IMPORTANT**  ")),
        style_bold(col_yellow("\n\nYou need to install: \n")),
        paste(paste(c(packages1[not]), collapse=", ")),
        "\n\n--------------------------------------",
        "\n\n Use:\n - install.packages(),\n - BiocManager::install() or, \n - use Google to find installation instructions.\n\n", style_bold(col_green("Then run this function again!\n\n")))
  } else {
    cat("",col_green(style_bold("\n All packages are loaded!\n\n Happy Coding! :)\n\n")))
  }
}
