{
library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()
files <- list.files("analysis", pattern = "\\.Rmd$", full.names = TRUE)
files <- files[!grepl("^x", basename(files))]
}
wflow_build(files)
wflow_publish(files)

wflow_status()
wflow_view()


