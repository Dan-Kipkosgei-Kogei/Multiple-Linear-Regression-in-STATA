# Multiple Linear Regression in STATA
## By Dan Kipkosgei Kogei, MSc.
Multiple linear regression is a method you can use to understand the relationship between several explanatory variables and a response variable.

If we have p predictor variables, then a multiple linear regression model takes the form:

$Y = \beta_0 + \beta_1X_1 + \beta_2X_2 + … + \beta_pX_p + \epsilon$

where:
- Y: The response variable
- $X_j$: The $j^{th}$ predictor variable
- $\beta_j$: The average effect on Y of a one unit increase in $X_j$, holding all other predictors fixed
- $\epsilon$: The error term

The values for $\beta_0, \beta_1, \beta_2, \ldots, \beta_p$ are chosen using the least squares method, which minimizes the sum of squared residuals (RSS):

$RSS = \sum (y_i - \hat{y}_i)^2$

where:
- $\sum$: A greek symbol that means sum
- $y_i$: The actual response value for the ith observation
- $\hat{y}_i$: The predicted response value based on the multiple linear regression model

The method used to find these coefficient estimates relies on matrix algebra.

## Application Of MLR in Modeling Student Academic Performance in R

This work utilized the secondary data from Kaggle with a sample size of n=10,000. 

The response variable was;
- Performance Index.
  
The Predictor variables were;
- Hours Studied (the number of hours the students takes in studying)
- Previous Scores (Previous performance of the students)
- Extracurricular Activities (If the student is participating in extra curicullar activities)
- Sleep Hours (number of hours student takes in sleeping)
- Sample Question Papers Practiced (number of question papers revised by the student)

# Examining the Data

<img src="summaryMLR1.PNG" width="600"/>

  
