library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()

wflow_build("analysis/202504_Workshop.Rmd")

#
gc()
#
gc()
#

wflow_publish("analysis/202504_Workshop.Rmd")

wflow_status()
wflow_view()


