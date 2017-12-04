#A Quick Introduction to R and RStudio
#by Vlad Krotov*/ 


#(LO2): Add comments to R code

  #This is a proper comment in R.

        #[LO2 QUESTION]: Click on the line that contains a properly entered comment in R


#(LO3): Use RStudio for entering and running R-code

  x <- 98765
  y <- 43210
  z <- x * y
  z

        #[LO3 QUESTION]: What issa the value of z?


#(LO4): Use some utility functions in R, such getwd()

  current_wd <-  getwd()
  current_wd
  
  desired_wd <- "C:/"
  setwd(desired_wd)

        #[LO4 QUESTION]: What is your current working directory?

  
#(LO5): Retrieve help information for R functions

  ?setwd

        #[LO5 QUESTION]: What is lm() function for?


#(LO6): Perform simple arithmetic calculations in R

  #Parenthesis, Exponents, Multiplication, Division, Addition and Subtraction (PEMDAS)

        #[LO6 QUESTION]: What is the value of x?
        x <- ((1+2)^3)*4/5+6-7
        x

#(LO7): Declare and detect variables of different data types

  #Numeric
  x <- 2
  class(x)
  
  #Character
  s <- "Some String"
  class(s)
  
  #Logical
  t <- TRUE
  f <- FALSE
  class(t)
  
  #Date
  d <- as.Date("1900-01-01")
  class(d)
  
  #Numeric vector
  numvector <- c(2,3,4,3,2,19)
  numvector
  
  #Character vector
  charvector <- c("Paris", "New York", "Tokyo")
  charvector
  
  #Note that R is "vectorized" language
  #Operations are applied to all values within a vector
  
  numvector10 <- numvector*10
  numvector10
  
  #A list is a vector containing other objects (e.g. vectors) as items
  mylist <- list(x, s, t, f, d, numvector, charvector)
  mylist

        #[LO7 QUESTION]: What is the data type of the variable n below?

        n <- '12112017'
        class(n)


#(LO8): Create and access data frames

  #The code below creates a 3x3 data frame
  #The daata frane containts three columns
  
  x <- c("Paris", "New York", "Tokyo")
  y <- c(10, -2, 8)
  z <- c("Sunny","Partially Cloudy", "Cloudy")
  weather <- data.frame("City" = x, "Temperature" = y, "Condition" = z)
  weather

  #There are many functions for working with data.frames:

  nrow(weather)
  ncol(weather)

  #Accessing columns
  weather$Temperature
  weather$Condition

  #Accessing rows
  weather[1,]
  
  #Accessing individual cells
  weather[1,1]

    #[LO8 QUESTION] What will be the value of the variable somecell?
    somecell <- weather[2,1]
    somecell

#(LO9): Write conditional statements in R

  #Simple if statement
  i <- 1
  if(i > 0) {
      print("i is positive")
    }

  #if...else statement
  i <- -7
  if(i > 0) {
        print("i is positive")
    } else {
        print("i is negative")
    }

  #Nested if statement
  i <- 0
  if (i < 0) {
        print("i is a negative number")
   } else if (i > 0) {
        print("i is a positive number")
   } else {
        print("i is zero")
   }
 
        #[LO9 QUESTION] What will be displayed by the nested if code below?
        
        letter <- "c"
        if (letter == "a") {
          print("letter is c")
        } else if (letter == "b") {
          print("letter is k")
        } else {
          print("letter is z")
        }

#[LO10]: Write loops in R

  #For loop
  for (index in 1:5)
    {
      print(index)
     }
  
  #While loop
  index <- 1
  while (index <= 5)
    {
      print(index)
      index <- index + 1
    }
  
  #Note that in R can loop through vectors
  numvector <- c(1,2,3,4,5)
  for (index in numvector)
      {
          print(index)
      }
  
  charvector <- c("Julie", "Jane", "Janice", "Jordan", "Jamie")
  for (index in charvector)
      {
        print(index)
      }

        #[LO10 QUESTION] What will the loop below display?
        
        index <- 1
        while (index < 1)
        {
          print(index)
        }

#[LO11] Install R packages from CRAN

  install.packages("swirl")
  
  library("swirl")
  swirl()
  
  #See details here: http://swirlstats.com/students.html
  
      #[LO11 QUESTION]  How do you install a package from CRAN?