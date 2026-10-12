# Program to implement and visualize K-Means Clustering

library(ggplot2)
# Using the built-in "iris" dataset (flower measurements)
data(iris)

# ---------- STEP 1: SELECT RELEVANT NUMERIC COLUMNS ----------
iris_data <- iris[, c("Petal.Length", "Petal.Width")]

# ---------- STEP 2: APPLY K-MEANS CLUSTERING ----------
set.seed(123) # for reproducible results
kmeans_result <- kmeans(iris_data, centers = 3, nstart = 20)
cat("Cluster centers:\n")
print(kmeans_result$centers)
cat("\nNumber of points in each cluster:\n")
print(table(kmeans_result$cluster))

# ---------- STEP 3: ADD CLUSTER LABELS TO DATA ----------

iris_data$Cluster <- as.factor(kmeans_result$cluster)

# ---------- STEP 4: VISUALIZE THE CLUSTERS ----------
ggplot(iris_data, aes(x = Petal.Length, y = Petal.Width, color = Cluster)) +
geom_point(size = 3) +
labs(title = "K-Means Clustering of Iris Dataset (K = 3)",
x = "Petal Length", y = "Petal Width") +
theme_minimal()

# ---------- STEP 5: COMPARE CLUSTERS WITH ACTUAL SPECIES ----------
cat("\nComparison of clusters with actual species:\n")
print(table(kmeans_result$cluster, iris$Species))