if(condition is true){
  performs action
}

if(condition is true){
  perform action
}
else{ #condition is false
  perform alternative action
}

x <- 8
if(x >= 10){
  print("x is greater or equal to 10")
} else if(x > 5){
  print("x is greater than 5, but less than 10")
} else{
  print("x is less than 5")
}

x <- 4 == 3
if(x){
  print("4 equals 3")
} else{
  print("4 different 3")
}

# Do we have records for gapminder data in 2002
if(!(nrow(gapminder[gapminder$year == 2002, ]) >= 1)){
  print("Recods found")
}

if(any(gapminder$year == 2002)){
  print("x")
}

if(!(gapminder$year == 2002)){
  print("x")
}

y <- -1
ifelse(y < 0, "negative", "positive")

x <- 8
ifelse(x >= 10, "more than 10", 
       ifelse(x > 5, "more than 5", "less than 5"))

for(iterator in set of values){
  do something
}

for(i in 1:10){
  print(i)
}

output_result <- c()
for(i in 1:5){
  for(j in letters[1:5]){
    if(i == 2){
      break
    }
    output_result <- c(output_result, paste(i, j))
  }
}

z <- 1
while(z > 0.5){
  print(z)
  z <- runif(1)
}

# Write a script that loops through the gapminder data by 
# continent and prints out whether the mean life expectancy 
# is smaller or larger than 50 years.

library(tictoc)

tic()
life_expectancy <- 50
for(iContinent in unique(gapminder$continent)){
  filtered_continent <- gapminder[gapminder$continent == iContinent,]
  avg_life_expectancy <- mean(filtered_continent$lifeExp, na.rm = TRUE)
  rm(filtered_continent)
  
  if(avg_life_expectancy >= life_expectancy){
    print(paste("Avg life expectancy in ", iContinent, 
          "is more than ", life_expectancy))
  } else{
    print(paste("Avg life expectancy in ", iContinent, 
          "is less than ", life_expectancy))
  }
}
toc()