# Drug leves in blood in randomly selected patients:
data <- c( 3.86, 4.06, 3.67, 3.97, 3.76, 3.61,
3.76, 4.26, 3.52, 3.96, 4.01, 4.03, 3.87, 4.04, 3.93, 4.14,
3.88, 3.84, 3.71, 3.72, 3.89, 4.07, 3.82, 4.33, 4.00, 3.99,
4.02, 3.82, 3.62, 3.68, 4.17, 4.03, 3.50, 3.52, 3.72, 3.94,
3.91, 3.71, 4.09, 4.02, 4.08, 4.04, 3.78, 3.98, 3.81, 3.92,
3.73, 4.16, 4.18, 3.57)

# What is the type of distribution?
hist(data)

# Descriptive statistics
cat(
    "min: ", min(data), "\n",
    "Q1: ", quantile(data, p=0.25), "\n",
    "med: ", median(data), "\n",
    "mean: ", mean(data), "\n",
    "Q3: ", quantile(data, p=0.75), "\n",
    "max", max(data), "\n",
    "sd: ", sd(data), "\n"
)

# Q3?
quantile(data, p=0.75) #4.03

# Quantile of 4.0
ecdf(data)(4.00) #0.66
# Rank of 4.0
rank(data)[data == 4]

# Outliers
Q1 <- quantile(data, p=0.25)
Q3 <- quantile(data, p=0.75)
IQR <- Q3-Q1
lower <- data[ data < Q1 - 1.5 * IQR ]
upper <- data[ data > Q3 + 1.5 * IQR ]
cat("outliers", lower, upper)

#Stem-and-Leaf Plot
stem(data)

library(e1071)
# Skewness
cat( "skewness:", skewness(data), "\n") #-0.1155614
# Kurtosis
cat( "kurtosis:", kurtosis(data), "\n") #-0.6935056
