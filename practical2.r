# Program to demonstrate basic data types and vector operations in R
# 1. Numeric data type

num_val <- 25.5
print(num_val)
print(class(num_val)) # Displays "numeric"

# 2. Integer data type
int_val <- 10L
print(int_val)
print(class(int_val)) # Displays "integer"

# 3. Character data type
char_val <- "Sipna College"
print(char_val)
print(class(char_val)) # Displays "character"

# 4. Logical data type
log_val <- TRUE
print(log_val)
print(class(log_val)) # Displays "logical"

# 5. Vector creation and operations
vec1 <- c(10, 20, 30, 40, 50) # numeric vector
vec2 <- c(1, 2, 3, 4, 5)

# Arithmetic operations on vectors
addition <- vec1 + vec2
subtraction <- vec1 - vec2
multiplication <- vec1 * vec2
division <- vec1 / vec2
cat("Addition:", addition, "\n")
cat("Subtraction:", subtraction, "\n")
cat("Multiplication:", multiplication, "\n")
cat("Division:", division, "\n")

# Vector functions
cat("Length of vector:", length(vec1), "\n")
cat("Sum of vector:", sum(vec1), "\n")
cat("Maximum value:", max(vec1), "\n")
cat("Minimum value:", min(vec1), "\n")
