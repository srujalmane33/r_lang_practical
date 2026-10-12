# Program to build and evaluate a Simple Linear Regression model
# Sample data: hours studied vs marks obtained

hours_studied <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
marks_obtained <- c(35, 40, 50, 55, 60, 65, 70, 78, 85, 92)

# Combine into a data frame

study_data <- data.frame(hours_studied, marks_obtained)

# ---------- BUILD THE LINEAR REGRESSION MODEL ----------

model <- lm(marks_obtained ~ hours_studied, data = study_data)

# ---------- EVALUATE THE MODEL ----------

cat("Model Summary:\n")
print(summary(model))
cat("\nIntercept (b0):", coef(model)[1], "\n")
cat("Slope (b1):", coef(model)[2], "\n")


# ---------- PREDICTION ----------
new_hours <- data.frame(hours_studied = 11)
predicted_marks <- predict(model, new_hours)
cat("Predicted marks for 11 hours of study:", predicted_marks, "\n")


# ---------- VISUALIZATION ----------
plot(hours_studied, marks_obtained,
  col = "blue", pch = 16,
  main = "Simple Linear Regression: Hours Studied vs Marks",
  xlab = "Hours Studied", ylab = "Marks Obtained"
)
abline(model, col = "red", lwd = 2)
