client <- c("private", "public", "other","private")
VAT <- ifelse(client =='private', 1.12 , ifelse(client == 'public', 1.06, 1))
VAT
#ifelse(contition , true , ifelse(condition , 1 , ifelse(condition , 2 , 3)))
# Loops in R
# While loop
# Syntax:
while (test_expression) {
  statement
}

i <- 1
while (i < 6) {
  print(i)
  i = i+1
}

# Repeat loop
# Syntax 
repeat { 
  commands 
  if(condition) {
    break
  }
}

v <- c("Hello")
cnt <- 5

repeat {
  print(v)
  cnt <- cnt+1
  if(cnt > 5) {
    break
  }
}

# For Loop 
# Syntax
for (value in vector) {
  statements
}

v <- LETTERS[1:4]
v
for ( a in v) {
  print(a)
}

for (i in 1:length(v)){
  print(v[i])
}

# Loop Control Statements
# break Statement - terminates the loop statement and transfers execution to the statement 
# immediately following the loop
v <- c("Hello","loop")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}

# next Statement - useful when we want to skip the current iteration of a loop without terminating it
