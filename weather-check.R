# Load CSV file as dataframe
df <- read.csv('weather-check.csv', header =  TRUE, sep = ',')

# People checking weather report
pie_data <- c(
  nrow(subset(df, df[2] == "Yes")),
  nrow(subset(df, df[2] == "No"))
)

png(filename = "charts/pie_check.png")
pie(pie_data,
  main = "Do you typically check a daily weather report?",
  labels = c("Yes", "No")
)
dev.off()

# Respondants by gender
pie_data <- c(
  nrow(subset(df, df[7] == "Male")),
  nrow(subset(df, df[7] == "Female"))
)

png(filename = "charts/pie_gender.png")
pie(pie_data,
    main = "What is your gender?",
    labels = c("Male", "Female")
)
dev.off()

# People checking weather report by gender
pie_data <- c(
  nrow(subset(df, df[2] == "Yes" & df[7] == "Male")),
  nrow(subset(df, df[2] == "No" & df[7] == "Male")),
  nrow(subset(df, df[2] == "Yes" & df[7] == "Female")),
  nrow(subset(df, df[2] == "No" & df[7] == "Female"))
)

png(filename = "charts/pie_check_gender.png")
pie(pie_data,
    main = "Do you typically check a daily weather report? (by gender)",
    labels = c("Yes (Male)", "No (Male)", "Yes (Female)", "No (Female)")
)
dev.off()
