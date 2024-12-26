library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()

wflow_build("analysis/index.Rmd")

#
gc()
#
#
#wflow_publish(c("analysis/*"),"Update")

wflow_status()
wflow_view()


?wflow_build
