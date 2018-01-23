# Lecture 1

## Randomized Experiment - Motivation and Creativity
A set of data shows creativity scores in two motication groups - intrinsic and extrinsic group. Each group are given extrinsic or intrinsic questionnaires according to which group it is. Then the question is: does the creativity scores tend to be affected by the type of motivation induced by the questionnaires? 

Test: Two sample t-test
H0: No difference between two groups.
HA: "Intrinsic" questionnaire significantly gets higher scores.
p-value: 0.005
mean increase: 4.1 points
95% Confidence Interval of increasing points: 1.3 - 7.0 points



## Sex Discrimination in Employment - An Obsrvational Study

The report is based on a public data in 1979 by H. V. Roberts. The data consist beginning salaries of 32 males and 61 females between 1969 and 1977.

Test: two sample t-test
H0: No significant difference in the beginning salary between male and female.
HA: Male is significantly higher.
p-value < 0.00001
mean difference: 818
95% confidence interval of the gap between male and female salary: 560 - 1076

### Class Notes
degree of freedom(df) = min(n_male, n_female) = 1
To determine if there is other factor could significantly affect he entry-level salary, we can gather data for the factor and run a regression. The p-value of the coefficient of the factor as a variable would determine if that factor will significantly affect the salary so that male have a higher salary for proper reasons.