library(dummies) 
library(dplyr)
library(car)




dummy_ecoded =data.frame(dummy(Lightbulbs$Brand))
lb = cbind(Lightbulbs,dummy_ecoded)
# lb = lb[-c(2,5)]
# lb = lb[-5]
View(lb)