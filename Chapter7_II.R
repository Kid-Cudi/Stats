## Chapter 7: 17-20

##############################
# (17) - Bookstore sales
##############################

sales_data <- read.csv('bookstore.csv')

#(a) - regression equation
# use lm(y ~ x) to find the linear model
regr <- lm(sales_data$sales.in1000. ~ sales_data$number.of.sales)
summary(regr) #outputs all of the coefficients, etc.
plot(sales_data$number.of.sales, sales_data$sales.in1000., #use auto complete here
     xlab="number of people working",
     
     ylab="sales ($1000)",
     main="Bookstore")
abline(regr, col="red")

# y-hat = 8.1006 + 0.9134x
# y-hat is the predicted sales in $1000s
# x in the number of sales people working


# (b) - interpret slope
# for every extra sales person, the predicted increase in sales
# is about $913.40, according to the model

# (c) - interpret y-intercept
# When zero sales people are working, the bookstore makes about
# $8100 in sales.  This might have meaning.  Perhaps the bookstore
# is making sales online as well.

# (d) - prediction for 18 people
# linear function
sales <- function (people) {
  return (8.1006 + 0.9134*people)
}
num_people <- 18
est <- sales(num_people)
sprintf("When %d people are working, the bookstore will pull about $%.1fk.", num_people, est)

# (e) - residual
# equation: e = obs - pred
# e is the residual variable because it stands for "error"

e <- 25 - sales(18)
sprintf("The residule for 18 people is $%.1fk.  This means the model is an underestimate",e)


#####################
#18
#####################

#a Write the regression equation. Define the variables used in your equation. 

# use lm(y ~ x) to find the linear model

Disk_data <- read.csv("Disk_Data.csv")

regr <- lm(Disk_data$Price..in... ~ Disk_data$Capacity..in.TB)
summary(regr)
plot(Disk_data$Capacity..in.TB.,Disk_data$Price..in...,  #use auto complete here
     xlab="amount of capacity that can be held ",
     ylab="price in dollars ",
     main="Disk data")
abline(regr, col="red")


#b########


# (b) - interpret slope
# an increase in the capacity that a disk drive can hold increases the sale price,
# The price goes up by about $104 for every 1 TB 
# is about $913.40, according to the model

# (c) - interpret y-intercept
# When zero sales people are working, the bookstore makes about
# $8100 in sales.  This might have meaning.  Perhaps the bookstore
# is making sales online as well.

