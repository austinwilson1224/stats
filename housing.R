


summary(houses2)

model = lm(formula = houses2$Price ~ houses2$`H Size`)


model
summary(model)


anova = aov(houses2$Price ~ houses2$`H Size`)
anova
summary(anova)
plot(houses2$`H Size`,houses2$Price)
abline(model, col='red')

avg_price = mean(houses2$Price)
avg_size = mean(houses2$`H Size`)
abline(avg_price,0,col="blue")
abline(v=mean(houses2$`H Size`),col="green")
abline(0,avg_size,col="green")






# residuals stuff

model.res = resid(model)
plot(houses2$`H Size`, model.res)
abline(0,0,col='blue')



View(model)
boxplot.stats(houses2$Price)$out



