# Exercise 2: writing and executing functions (II)

# Define a function `CompareLength` that takes in 2 character strings, and returns
# the sentence of the form
#   "The difference in length is N"
CompareLength <- function(string1, string2) {
  length.difference <- nchar(string1) - nchar(string2)
  return.sentence <- paste("The difference in length is", length.difference)
}

# Pass two strings of different lengths to your `CompareLength` function
compare.words <- CompareLength("Hello", "World!")
print(compare.words)

# Define a function `DescribeDifference` that will return one of the following statements:
# "Your first string is longer by N characters"
# "Your second string is longer by N characters"
DescribeDifference <- function(string1, string2) {
  length.difference <- nchar(string1) - nchar(string2)
  if (length.difference > 0) {
    result <- paste("Your first string is longer by", length.difference, "characters")
  } else {
    result <- paste("Your second string is longer by", -length.difference, "characters")
  }
  return(result)
}

# Pass two strings of different lengths to your `DescribeDifference` function
difference.words <- DescribeDifference("Hi", "R is fun!")
