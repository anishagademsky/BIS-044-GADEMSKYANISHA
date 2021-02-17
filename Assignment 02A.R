#Sys.Date
Date <- Sys.Date()
class(Date)
typeof(Date)

#Differences in dates
AgeDays = as.double (as.Date("2021-05-07")-Sys.Date())

cat ("Anisha, there are", AgeDays, "days left in the semester.")

# Programmatically clear the Console
cat("\014")

