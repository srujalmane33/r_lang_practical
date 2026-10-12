factorial_fun <- function(n) {
  fact <- 1
  for (i in 1:n) {
    fact <- fact * i
  }
  return(fact)
}
cat("Factorial of 6:", factorial_fun(6), "\n")


# ------ Addition --------

add <- function(a, b) {
  return(a + b)
}
cat("Addition of 5 and 3:", add(5, 3), "\n")
