# Program to demonstrate base R visualizations

# ---------- BAR PLOT ----------
subjects <- c("Maths", "Science", "English", "CS", "SS")
marks <- c(85, 90, 75, 95, 80)
barplot(marks, names.arg = subjects, col = "skyblue",
main = "Marks in Different Subjects", xlab = "Subjects", ylab = "Marks")

# ---------- HISTOGRAM ----------
set.seed(1)
data_values <- rnorm(100, mean = 50, sd = 10) # 100 random normal values
hist(data_values, col = "orange", main = "Histogram of Random Data",
xlab = "Values", breaks = 10)

# ---------- PIE CHART ----------
slices <- c(25, 20, 30, 25)
labels <- c("CSE", "IT", "Mechanical", "Civil")
pie(slices, labels = labels, main = "Department-wise Student Distribution",
col = rainbow(length(slices)))

# ---------- BOXPLOT ----------
boxplot(marks, main = "Boxplot of Marks", ylab = "Marks", col = "lightgreen")


# ---------- LINE CHART ----------
days <- 1:7
temperature <- c(30, 32, 31, 29, 33, 34, 30)
plot(days, temperature, type = "l", col = "red", lwd = 2,
main = "Temperature Trend Over a Week", xlab = "Day", ylab = "Temperature (C)")