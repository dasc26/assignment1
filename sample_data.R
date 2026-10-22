# sample_data.R
# Creates a small example dataset of disease cases and
# calculates the incidence rate per 100,000 people.
 
# Each row: region, number of cases, population
data <- data.frame(
  region = c("Addis Ababa", "Oromia", "Amhara"),
  cases = c(120, 85, 60),
  population = c(5000000, 40000000, 25000000)
)
 
# Save the data to a CSV file
write.csv(data, "sample_data.csv", row.names = FALSE)
cat("Sample data created!\n")
 
# Calculate incidence per 100,000 people
data$rate <- data$cases / data$population * 100000
print(data)