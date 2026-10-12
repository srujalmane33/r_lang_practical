# Program to demonstrate string functions in R
str1 <- "Sipna College"
str2 <- "of Engineering"

# ---------- CONCATENATION ----------
full_str <- paste(str1, str2, sep = " ")
cat("Concatenated String:", full_str, "\n")
full_str2 <- paste0(str1, str2) # without space
cat("Concatenated (no space):", full_str2, "\n")

# ---------- EXTRACTION ----------
extracted <- substr(full_str, 1, 5)
cat("Extracted substring (first 5 chars):", extracted, "\n")

# ---------- CASE CONVERSION ----------
cat("Uppercase:", toupper(full_str), "\n")
cat("Lowercase:", tolower(full_str), "\n")


# ---------- PATTERN MATCHING ----------
match_result <- grepl("College", full_str)
cat("Does string contain 'College'?", match_result, "\n")


# ---------- REPLACEMENT ----------
replaced_str <- gsub("Engineering", "Technology", full_str)
cat("String after replacement:", replaced_str, "\n")


# ---------- OTHER USEFUL FUNCTIONS ----------
cat("Number of characters:", nchar(full_str), "\n")
split_result <- strsplit(full_str, " ")
cat("Splitting string by space:\n")
print(split_result)
