# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Here, we perform a linear regression on the data to see the relationships, if any, mpg has with the other variables.

![Linear_Regression_mpg](resources/images/mpg_lin_regression.jpg)

The data shows a statistically significant relationship between mpg and both ground clearance and vehicle length.  This means these two variables seem to have a non-random amount of variance to the mpg values.

Because the p-values of these two are about 5 x 10^8, much smaller than our assumed significance of 0.05,  we can reject our null hypothesis and assume the slope of those linear models to be non-zero.

An r-squared value over 0.71 means our liner regression model exhibits potentially strong predictive power.

## Summary Statistics on Suspension Coils

Below is a table containing summary statistics for suspension coil weight capacity in PSI.

![Suspension_PSI_Summary](resources/images/suspension_summary.jpg)

And following here is a summary of the same coils and PSI findings grouped by production lot.

![Suspension_Summary_by_Lot](resources/images/lot_summary.jpg)

If we were to look at the overall summary, we would see acceptable numbers.  A variance of about 62 pounds per square inch is below  100, the threshold for acceptable variance set by the company, MechaCar.  However, when looking at the variance by lot, we can see that most of the coil variation comes from Lot 3.  Lot 3 variance measures at 170 PSI, falling far outside the acceptable threshold of 100.

## T-Tests on Suspension Coils

Below is a table containing the p-values obtained from t-testing the coils' weight capacities across all the data, and across each lot.

![P-Values](resources/images/p_values.jpg)

According to these results, the total data set, lot 1, and lot 2 all have p-values above our 0.05 confidence level. This means that we can reject our null hypothesis; it seems that these sets are statistically similar to the population.  In fact, lot 1, with a p-value of 1, should almost exactly model the population.

Meanwhile, lot 3 remains the skewing data.  With a p-value below 0.05, we can reject the null hypothesis and say that the sample is statistically different.

## Study Design: MechaCar vs Competition

For further analysis, we could look at highway fuel efficiency.  Cars are an expensive investment, and knowing one kind of car is more efficient with its gas than another can be a compelling factor when considering a purchase.  We would collect mileage data from a large sample of both MechaCar vehicles and competitors' vehicles.  This data would be in miles per gallon of gas.

Our null hypothesis, then, is that the differences seen between MechaCar and its competitors is due to random chance, that there is no statistical difference between the two samples.

Our alternative hypothesis, then, is that there is a statistically significant difference between the two observed samples.

To test our hypothesis, we would use a two-sample t-test, since our data (mpg) is continuous and numerical, and since we are comparing two samples.
