# homework6

df = read.csv('vacation.csv')
View(df)
# 1.	A developer of vacation homes is considering purchasing a tract of land near a lake. 
# From previous experience, she knows that the price of a lot is affected by 
# the lot size, number of mature trees, and distance to the lake. 
# From a nearby area, she gathers data on 60 recently sold lots. 
# These data are stored in the file VACATION. 
# Use the data to construct a regression model to predict the value of a lot.


#  a. 	Do the model assumptions appear to be satisfied? If not, which ones are violated?
#         it seems like the model assumptions do not hold. There does not appear to be linear relationship between the 
#         independent variables and dependent variables
#  b. 	What is R2? What does it tell you?
#         R2 = .1239 and adjusted R2 = .09319, this tells us that the variation in price is not explained by
#         lot size and distance 
#  c. 	Which of the explanatory variables is linearly related to the response variable in this (the original) model?
#  d. 	If necessary, create a new model by removing insignificant variables.
#  e. 	Interpret the slopes in the new model.
#  f.	  Predict with 95% confidence the selling price of a 40,000-square foot lot with 50 mature trees that is located 75 feet from the lake.
#  g.	  Estimate with 95% confidence the average selling price of all such lots.


names(df)

model1 = lm(formula = df$Price ~ df$Lot.size + df$Trees + df$Distance, data = df)
summary(model1)
plot(df)








