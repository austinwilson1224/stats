library(dummies) 
library(dplyr)
library(car)




dummy_ecoded =data.frame(dummy(Lightbulbs$Brand))
lb = cbind(Lightbulbs,dummy_ecoded)
lb = lb[-c(2,5)]
# lb = lb[-5]
View(lb)


Hours = lb$Hours
Dot = lb$Brand.Dot
GE = lb$Brand.GE
West = lb$Brand.West
generic = lb$Brand

full_model = lm(Hours~Dot+GE+West)
summary(full_model)

aov_model = aov(Hours~Dot+GE+West)
summary(aov_model)
plot(aov_model)




