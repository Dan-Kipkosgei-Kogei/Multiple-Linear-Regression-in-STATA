# Multiple Linear Regression in STATA
- Multiple linear regression is a method you can use to understand the relationship between several explanatory variables and a response variable.
- If we have p predictor variables, then a multiple linear regression model takes the form:
Y = β0 + β1X1 + β2X2 + … + βpXp + ε
where:

Y: The response variable

Xj: The jth predictor variable

βj: The average effect on Y of a one unit increase in Xj, holding all other predictors fixed
ε: The error term
The values for β0, β1, B2, … , βp are chosen using the least square method, which minimizes the sum of squared residuals (RSS):
RSS = Σ(yi – ŷi)2
where:
Σ: A greek symbol that means sum
yi: The actual response value for the ith observation
ŷi: The predicted response value based on the multiple linear regression model
