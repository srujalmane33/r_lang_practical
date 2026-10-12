# Program to demonstrate if, else, and switch control structures

# ---------- IF - ELSE ----------
num <- 15
if (num %% 2 == 0) {
  cat(num, "is an Even number\n")
} else {
  cat(num, "is an Odd number\n")
}

# ---------- ELSE-IF LADDER ----------
marks <- 72
if (marks >= 90) {
  cat("Grade: A+\n")
} else if (marks >= 75) {
  cat("Grade: A\n")
} else if (marks >= 60) {
  cat("Grade: B\n")
} else {
  cat("Grade: C\n")
}

# ---------- SWITCH STATEMENT ----------
day <- "Wednesday"
result <- switch(day,
  "Monday" = "Start of the working week",
  "Wednesday" = "Midweek day",
  "Friday" = "Last working day",
  "Unknown day" # default case
)
cat("Day info:", result, "\n")
