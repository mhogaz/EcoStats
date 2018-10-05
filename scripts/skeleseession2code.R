#getting into it- notes from the lecture portion
#standard devuiation is the spread, variance is the sd squared
#linear ergression used with normally distrubited data
#dependent and independent variables are continuous
#tests for linear relationship
#use a t test- tests whether there is a differnce between means of both factors- the independent variable is only 2 factors


#Linear regression example - import lmtest - use the lm() function - use ?lm to see what it needs
?lm

lr <- lm(Temperature ~ Elevation, data = lmtest)

summary(lr)

plot(lmtest$Temperature ~ lmtest$Elevation)
abline(lr)

#make a data frame with 1 column with 20 random continous numbers and another column that is one factor for the first 10 and another factor for the second 10
df <- as.data.frame(1:20, row.names = NULL)
df$f <- c("Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur", "Mollie", "Arthur")

tt <- t.test(df$`1:20` ~ df$f)
tt


#ANOVA - consider differences between states - load the car package - use lmtest data!
install.packages("car")
library(car)
anv <- lm(Elevation ~ Location, data = lmtest)
summary(anv)

#use the car package to make the anovanw that you have made the linear regression
anvtest <- Anova(anv, type = 2)
install.packages("lsmeans")
library(lsmeans)

lsmanv <- lsmeans(anv, ~Location)
lsmanv

#make another lm() - use location as a factor and plot temperature or elevation


#Test it with ANOVA - Anova(), use a type=3 response


#least squared means - load the lsmeans package


#Is our "Real" data actually normally distributed? use hist() to plot dependent variable
hist(lmtest$Temperature)
