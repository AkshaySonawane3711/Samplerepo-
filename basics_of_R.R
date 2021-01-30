var_name2. <- 1 # Has letters, numbers, dot and underscore
.var_name <- 2 # Can start with a dot(.) but the dot(.)should not be followed by a number
var.name <- 3
# Invalid 
var_name% <- 4 # Only dot(.) and underscore allowed 
2var_name <- 5 # cannot start with a number
.2var_name <- 6 # dot followed by a number makes it invalid
_var_name <- 7 # cannot start with _
a = 1
a1 = 2
1a = 2
'''
Data types :  1. Numeric
              2. Integer
              3. Charecter
              4. Logical
              5. complex
           

'''
# Defining a Numeric data type 
# All the numbers will come under this data type
a<-1
class(a)

a<-134.456
a
class(a)

b<-11
b

class(b)
# Defining an integer (takes only Integer value)
a<-1L
a
class(a)
x<-1.2L
x
class(x) # overwrites the type of class
s<-1:10
s
?seq()
s<-seq(1,10)
s

s<-seq(1,1000,50)
s
#defining a complex number
1+2i
x<-1+2i
class(x)
Re(x) # print real value in x
Im(x) # print Imaginary Numbers

# defining a character
a<-'a'
class(a)
LETTERS
x<-LETTERS[1:6] #seques
a<-TRUE #T
a
b<- FALSE #F
b
class(a)
class(b)
as.integer(TRUE)
# Logical --> Integer --> Numeric --> complex --> Char
0
x<-as.logical(0)
x
class(x)
'''


