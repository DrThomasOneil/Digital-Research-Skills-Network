{
library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()
files <- list.files("analysis", pattern = "\\.Rmd$", full.names = TRUE)
files <- files[!grepl("^x", basename(files))]
}
wflow_publish(c("analysis/index.Rmd", "analysis/202608.Rmd", "analysis/0_schedule.Rmd"))

wflow_status()
wflow_view()



