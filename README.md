# Multiple Linear Regression in STATA
Multiple linear regression is a method you can use to understand the relationship between several explanatory variables and a response variable.

If we have p predictor variables, then a multiple linear regression model takes the form:

$Y = \beta_0 + \beta_1X_1 + \beta_2X_2 + … + \beta_pX_p + \epsilon$

where:
- Y: The response variable
- $X_j$: The $j^{th}$ predictor variable
- $\beta_j$: The average effect on Y of a one unit increase in $X_j$, holding all other predictors fixed
- $\epsilon$: The error term
- 
The values for $\beta_0, \beta_1, \beta_2, \ldots, \beta_p$ are chosen using the least squares method, which minimizes the sum of squared residuals (RSS):
\[
RSS = \sum_{i=1}^{n} (y_i - \hat{y}_i)^2
\]
where:
Σ: A greek symbol that means sum
yi: The actual response value for the ith observation
ŷi: The predicted response value based on the multiple linear regression model
