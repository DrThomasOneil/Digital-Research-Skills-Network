{
library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()
files <- list.files("analysis", pattern = "\\.Rmd$", full.names = TRUE)
files <- files[!grepl("^x", basename(files))]
}
wflow_build(c("0_schedule.rmd","index.rmd"))
wflow_publish(c("0_schedule.rmd, index.rmd"))

wflow_status()
wflow_view()



