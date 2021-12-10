# MechaCar_Statistical_Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. 
AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

The data analytics team is tasked to do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- For each statistical analysis, you’ll write a summary interpretation of the findings.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

# Deliverables:

The team's assignment consists of three technical analysis deliverables and a proposal for further statistical analysis.  The team will submit the following:
1.  Linear Regression to Predict MPG
2.  Summary Statistics on Suspension Coils
3.  T-Test on Suspension Coils
4.  Study Designed to Compare the MechaCar Vehicles Performance versus Competition 

# Resources

- Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: R, Rstudio

# Deliverable 1: Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R, a linear model is designed that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. A summary of the multiple linear regression results are documented.

## Results

Linear Regression Model:
- mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

ADD SCREENSHOT
Statistical Analysis Summary:
- The linear model's r-squared value of 0.7149 indicates the model does a good job in predicting MPG of the MechaCar prototypes 
- The p-Value (5.35e-11) for the model is much smaller the assumed significance level of 0.05% indicating that evidence supports rejecting the null hypothesis.  
- Vehicle length and vechicle ground clearance have significant influence on mpg on the MechaCar prototype while vehicle weight, spoiler angle and AWD have minimal impact. 

# Deliverable 2: Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, a summary statistics table to show:
- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

## Results
ADD SCREENSHOTS

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
The variance of the suspension coils when all lots are analyzied together is 62.29 and is well within the 100 PSI variance specification.  When looking at the lots individually, Lot 1 and Lot 2 are within the 100 PSI variance specification; with variances of 0.98 and 7.47 respectively.  Lot 3 is out of family with a PSI variance of 170.29 which exceeds the 100 PSI specification.  It is noted that the variance for all Lots combined is driven by Lot 3. 

# Deliverable 3: T-Test on Suspension Coils

R scripts are used to perform t-tests to determine if all manufacturing lots and each lot indiviually are statistically different from the population mean of 1,500 pounds per square inch.

## Results
All manufacturing lots t-test results:
- ADD Screenshots
- The mean of all three lots is 1498.78 with a p-Value of 0.06 which is higher than the common significance level of 0.05.  Based on this there is not enough evidence to support refecting the null hypothesis.  The mean of these three manufacturing lots is statistically similiar to the population mean of 1500.

- Add screenshots
Individual lot t-test results:
- Lot 1 has a sample mean of 1500 and a p-Value of 1 therefore the null hypothesis that there is no statistical differnce between the observed mean of Lot 1 and the population mean of 1500 is accepted. 
- Lot 2 has a similiar outcome with a sample mean of 1500.02 and a p-Value of 0.61 therefore the null hypothesis can't be rejected and the Lot 2 observed mean and the population mean are statistically similiar.
- Lot 3 has a sample mean of 1496.14 and a p-Value of 0.04.  Based on the p-Value of 0.04 being less than the common significance level of 0.05 the null hypothesis that the sample mean and the population mean are not statistically different is rejected.  

# Deliverable 4: Study Designed to Compare the MechaCar Vehicles Performance versus Competition 
The goal of the study is to determine if the fuel efficiency, price, safety rating, and horsepower for the MechaCar out performs the competition.  These parameters are believed to be important buying criteria for customers.   A statistitcal analysis of these four parameters will be performed to determine how well the MechCar compares versus the competition. The results can be used to focus and support marketing material for the MechaCar on the advantages discovered. 

The vehicle class for comparison is the Sedan.  The metrics of fuel efficiency, price, safety rating, and horsepower is collected for latest competitors models and compared versus the MechaChar data. Metrics:
1. Fuel Efficiency 
2. Price
3. Safety Rating
4. Horsepower

Null hypothesis: This is NO statistical significant difference on the above defined metrics between the MechaCar and the competition offerings.
Alternative hypothesis: Ther is a statistical difference on the the defined metrics between the MechaCar and the competition offerings. 
The significance value for the study is defined to be 0.05.

For the intial analysis all the competitor data is grouped together to determine how well the MechaCar compares to the overall market.  
- T-tests are performed on each metric for the MechaCar vs. the same metric from the competitor data.  If the p-Value is less than 0.05 then the NULL hypothesis will be rejected for that metric and the metric evaluted to determine if the MechaCar out performs or underperforms the competition.  

Additional analysis of selected individual key competitor data is generated to determine how well the MechaCar compares to the specific competitors in the market.  
- T-tests are performed on each metric for the MechaCar vs. the same metric each individual competitor's data.  If the p-Value is less than 0.05 then the NULL hypothesis will be rejected for that metric and the metric evaluted to determine if the MechaCar out performs or underperforms the specific individual competitors.

