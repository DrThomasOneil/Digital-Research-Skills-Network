library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()

wflow_build("analysis/*.Rmd")

#
gc()
#
#

wflow_publish(c("analysis/*"),"Initial Deployment")

wflow_status()
wflow_view()


?wflow_build
