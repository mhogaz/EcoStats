#Import data - text file (base) - make sure that it will import properly
install.packages("car")
library(car)  # includes vif

df <- mercury


#part a - liver mass

liv <- lm(liver ~ fishmass + waterconc, data = df)

summary(liv)

#reduced model

liv1 <- lm(liver ~ fishmass, data = df)

liv2 <- lm(liver ~ waterconc, data = df)

summary(liv1)
summary(liv2)

AIC(liv, liv1, liv2)

#looking at the estimates 0.036(fishmass) v 33.27 (waterconc), they are really far apart- so waterconc is having the biggest effect, right?
#need to look at scale of dependent variables

#part b - tissue mercury concentration

tiss <- lm(fishconc ~ fishmass + waterconc + liver, data = df)
summary(tiss)

tiss1 <- lm(fishconc ~ fishmass + waterconc, data = df)

tiss2 <- lm(fishconc ~ fishmass, data = df)

tiss3 <- lm(fishconc ~ waterconc + liver, data = df)

tiss4 <- lm(fishconc ~ waterconc, data = df)

tiss5 <- lm(fishconc ~ liver + fishmass, data = df)

tiss6 <- lm(fishconc ~ liver, data = df)

AIC(tiss, tiss1, tiss2, tiss3, tiss4, tiss5, tiss6)

#tiss and tiss1 are very similar, but the full model (tiss) is slightly smaller than the nested one (tiss)
#we have to consider both
#if they were switched and the nested model had a smaller AIC, we could ignore the full model

#part c - growth