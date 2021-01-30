if (test_expression) {
  statement
}

x <- 5

if(x > 0){
  print("Positive number")
  print(x)
}

# If Else Statement
# syntax: 
if (test_expression) {
  statement1
} else {
  statement2
}

x <- 5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

# Nested If Else Statement
if ( test_expression1) {
  statement1
} else if ( test_expression2) {
  statement2
} else if ( test_expression3) {
  statement3
} else  statement4

x <- -3
if (x == 0) {
  print("Zero")
} else if (x > 0) {
  print("Positive number")
} else print("Negative Number")

# There is an easier way to use if...else statement specifically for vectors in R programming
# Syntax: ifelse(test_expression,x,y)
a = c(5,7,2,9)
help()
?ifelse
ifelse(a %% 2 == 0,"even","odd")

a/2
a%%2
