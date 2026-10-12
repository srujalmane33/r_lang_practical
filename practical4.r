# Program to demonstrate for, while, and repeat loops

# ---------- FOR LOOP: Sum of first N natural numbers ----------
n <- 10
sum_for <- 0
for (i in 1:n) {
  sum_for <- sum_for + i
}
cat("Sum of first", n, "natural numbers (for loop):", sum_for, "\n")

# ---------- WHILE LOOP: Print multiplication table ----------
num <- 5
i <- 1
cat("\nMultiplication table of", num, "(while loop):\n")
while (i <= 10) {
  cat(num, "x", i, "=", num * i, "\n")
  i <- i + 1
}

# ---------- REPEAT LOOP: Factorial of a number ----------
fact_num <- 5
fact <- 1
counter <- 1
cat("\nFactorial calculation (repeat loop):\n")
repeat {
  fact <- fact * counter
  counter <- counter + 1
  if (counter > fact_num) {
    break
  }
}
cat("Factorial of", fact_num, "is", fact, "\n")
