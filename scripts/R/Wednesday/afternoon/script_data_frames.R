cats

age <- c(2, 3, 5)

cats <- cbind(cats, age)

newRow <- list('tortoise', 3.3, TRUE, 9)
(cats <- rbind(cats, newRow))

levels(cats$coat)

levels(cats$coat) <- c(levels(cats$coat), 'tortoiseshell')

cats$coat <- as.character(cats$coat)

# Challenge 1
# 1. Create a vector called human_age by multiplying 
# cats$age by 7.

human_age <- cats$age * 7

#2. Convert to factor
human_age <- as.factor(human_age)

#3. 
as.numeric(human_age)
as.numeric(as.character(human_age)) / 7

# Remove information

cats
cats[-4,]
na.omit(cats)
cats[-c(4,5,6),]

cats <- na.omit(cats)

# Remove columns

%in%
  
drop_column <- names(cats) %in% c("age", "weight")
cats[,!drop_column]

(cats <- rbind(cats, cats))

(y <- 1:5)


rownames(cats) <- NULL
cats

# Challenge 2
# 
# Make a data frame that holds the following information for yourself:
#   
# first name
# last name
# lucky number
# Then use rbind to add an entry for the people sitting beside you.
# Finally, use cbind to add a column with each person’s answer to 
# the question, “Is it time for coffee break?”


# make a df with my first, last names, and my lucky numbers. 
df <- data.frame(first = c("Claudia"),
                 last = c("Rodriguez-Sobstel"),
                 lucky_number = c(14),
                 stringsAsFactors = FALSE)
# use rbind to add an entry for someone else 
df <- rbind(df, list("Gandalf", "the Grey", 7))

# use cbind to add a column to each person's answer for 
# 'is it time for a coffee break?' 
df <- cbind(df, coffeebreak = c(TRUE,TRUE))

gapminder <- read.csv('data/gapminder_data.csv', 
                      stringsAsFactors = TRUE)

str(gapminder)
summary(gapminder)
summary(gapminder$country)

typeof(gapminder$country)
length(gapminder)

typeof(gapminder)
ncol(gapminder)
nrow(gapminder)

dim(gapminder)
colnames(gapminder)
head(gapminder, 2)
tail(gapminder)

gapminder[c(10:30), ]

set.seed(88)
gapminder[sample(nrow(gapminder), 10), ]
