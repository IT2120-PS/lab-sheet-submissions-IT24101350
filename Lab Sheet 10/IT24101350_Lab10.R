setwd("C:\\Users\\SARASI\\Downloads\\OneDrive\\Desktop\\SLIIT\\2nd Year\\PS\\PS Labs\\Lab 10-20251022")
getwd()

observe <- c(120,95,85,100)
prob <- c(.25, .25, .25, .25)

chisq.test(observe)
chisq.test(observe, p = prob)
