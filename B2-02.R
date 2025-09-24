# Drug amount in pills [mg per pill]:
data <- c(0.6544, 0.6121, 0.6438, 0.6510, 0.6592,
0.6525, 0.6515, 0.6545, 0.6519, 0.6504, 0.6416, 0.6656, 0.6626, 0.6546, 0.6342,
0.6413, 0.6588, 0.6531, 0.6461, 0.6196)

# What is the type of distribution?
hist(data)

# Descriptive statistics
cat(
    "min: ", min(data),
    "\nQ1: ", quantile(data, p=0.25),
    "\nmed: ", median(data),
    "\nmean: ", mean(data),
    "\nQ3: ", quantile(data, p=0.75),
    "\nmax", max(data),
    "\nsd: ", sd(data),
    "\n"
)

# Rank of Q1 and Q3
cat( "rank Q1", rank(data)[data == 0.6416], "\n")
cat( "rank Q3", rank(data)[data == 0.6545], "\n")

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
cat("skewness:", skewness(data), "\n") #-1.256
# Kurtosis
cat("kurtosis:", kurtosis(data), "\n") #0.9901848
