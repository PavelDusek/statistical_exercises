# Amount of fenitrothion
data <- c(49.82, 49.91, 50.00, 50.10, 50.13,
50.19, 50.22, 50.23, 50.25, 50.29, 50.30, 50.30, 51.32, 50.36, 50.39,
50.40, 50.43, 50.47, 50.50, 50.53, 50.57, 50.72, 50.92, 50.40)

# Descriptive statistics
Q1 <- quantile(data, p=0.25)
Q3 <- quantile(data, p=0.75)
IQR <- Q3 - Q1

cat(
    "min:", min(data), "\n",
    "Q1:", Q1, "\n",
    "med:", median(data), "\n",
    "mean:", mean(data), "\n",
    "Q3:", Q3, "\n",
    "max:", max(data), "\n",
    "sd:", sd(data), "\n"
)

# Outliers
lower <- data[ data < Q1 - 1.5 * IQR ]
upper <- data[ data > Q3 + 1.5 * IQR ]
cat( "Outliers", lower, upper, "\n" )
