x <- c(5, 6, 4, 7.5, 8)
names(x) <- c(letters[1:5])
x

x[1]
x[4]
x[c(1, 3)]
x[1:3]
x[c(1, 2, 3)]
x[c(1, 1, 3)]
x[8]
x[0]

x[-2]
x[c(-1, -3)]
x[-c(1, 3)]
x[-1:3]
x[-c(1:3)]

(x <- x[-4])

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')

x[2:4]
x[c(2,3,4)]
x[c(-1,-5)]
x[-c(1, 5)]

x[c("a", "c")]
x[c(FALSE, FALSE, TRUE, FALSE, TRUE)]

x[names(x) != "c"]
x[!(names(x) == 'a')]

# Write a subsetting command to return the values in x that are 
# greater than 4 and less than 7
x[x > 4 & x < 7]

x <- 1:3
names(x) <- c('a', 'a', 'a')
x['a']
x[names(x) == 'a']
x[names(x) %in% c('b')]

x <- c(a = 5.4, b = 6, c = 8, d = 9.2, e = 7.5)
x[names(x) != 'a']
x[!(names(x) %in% c('a', 'c'))]

# Challenge 3

seAsia <- c("Myanmar","Thailand","Cambodia","Vietnam","Laos")
## convert from a factor to a character;
## and get just the non-repeated elements
countries <- unique(as.character(gapminder$country))

countries == seAsia
(countries=="Myanmar" | countries=="Thailand" |
    countries=="Cambodia" | countries == "Vietnam" 
  | countries=="Laos")

countries[countries %in% seAsia]

x <- c(a = 1, b = 4, c = NA, e = 8)
x

is.na(x)
na.omit(x)
is.nan(0/0)
is.finite(x)
is.infinite(x)
is.infinite(-Inf)


f <- factor(c(rep("a", 2), "e", "b", rep("d", 3)))
f

f[f == 'a']
f[f %in% c('b', 'c', 'd')]
f[1:3]
f[-3]

xlist <- list(a = 'Software Carpentries', b = 1:10, data = head(mtcars))

xlist[[1]]
xlist[[1:2]]
xlist[-1]
xlist$data

head(gapminder[1,3])
head(gapminder[[3]])
head(gapminder$year)
gapminder[1:3,]
gapminder[3,1:5,drop = FALSE]

# Extract observations collected for the year 1957
gapminder[gapminder$year == 1957, ]
# Extract all columns except 1 through to 4
head(gapminder[,-c(1:4)])
# Extract the rows where the life expectancy is longer 
# the 80 years
gapminder[gapminder$lifeExp > 80, ]
# Extract the first row, and the fourth and fifth columns 
# (continent and lifeExp).
gapminder[1, c(4, 5)]
# extract rows that contain information for the years 2002 and 
# 2007
gapminder[gapminder$year == 2002 | gapminder$year == 2007, ]
gapminder[gapminder$year %in% c(2002, 2007), ]

gapminder[1:20,]
head(gapminder[3])
