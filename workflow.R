library("workflowr")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

wflow_status()

wflow_build(c("analysis/*.Rmd"))

#
gc()
#
gc()
#

wflow_publish(c("analysis/0_contacts.Rmd"))

wflow_status()
wflow_view()


