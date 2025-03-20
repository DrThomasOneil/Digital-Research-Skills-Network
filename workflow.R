library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()

wflow_build(c("analysis/*index.Rmd"))

#
gc()
#
gc()
#

wflow_publish(c("analysis/index.Rmd"))

wflow_status()
wflow_view()


