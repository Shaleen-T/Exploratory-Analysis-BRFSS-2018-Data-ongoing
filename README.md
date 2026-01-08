# Exploratory-Analysis-BRFSS-2018-Data

- **Overview**: The analysis investigates relationships between key health outcomes and demographic factors, utilizing a subset of BRFSS data with 106,285 observations across 12 variables, including sexual orientation, mental health, and cardiovascular health. [https://www.cdc.gov/brfss/](https://www.cdc.gov/brfss/)

## Data Description
- **Dataset**: A subset of the BRFSS 2018 dataset with 106,285 observations and 12 variables, collected from noninstitutionalized U.S. adults aged 18+ via telephone surveys.
- **Variables**:
  - **Exposure**: Sexual Orientation (SO) as the primary exposure variable.
  - **Covariates**: Sex, Race, Age Category, Income Category, BMI Category, Presence of Health Plan, and Smoking Status.
  - **Outcomes**: Number of Poor Mental Health Days (MENTHLTH) and Depressive Disorder (ADDEPEV2).
- **Data Handling**: Missing values were excluded, and categorical variables were formatted for analysis.

## Key Variables
### Exposure Variable
- **Sexual Orientation**: Lesbian/Gay, Straight/not gay, Bisexual, Something else.

### Outcome Variables
- **Poor Mental Health Days**: Continuous (0-30 days).
- **Depressive Disorder**: Binary (Yes/No).

- ## Variable Code List
The following table outlines the key variables used in this analysis, derived from the BRFSS 2018 dataset:

| Variable Name    | Description                                      |
|-------------------|--------------------------------------------------|
| SO               | Sexual Orientation (e.g., Straight, Lesbian/Gay, Bisexual, Something Else) |
| SEX1             | Sex (Male, Female)                               |
| RACE             | Race/Ethnicity (e.g., White Non-Hispanic, Black Non-Hispanic, etc.) |
| AGECAT           | Age Category (e.g., 18-29, 30-39, 40-59, 60+)   |
| INCOMECAT        | Income Category (e.g., < $50,000, ≥ $50,000)    |
| BMICAT           | BMI Category (e.g., Underweight, Normal, Overweight, Obese) |
| MENTHLTH         | Number of Poor Mental Health Days               |
| ADDEPEV2         | Depressive Disorder (Yes, No)                   |
| POORHLTH         | Number of Poor Physical Health Days             |
| GENHLTH          | General Health Status (e.g., Excellent, Poor)   |
| HLTHPLN1         | Presence of Health Plan (Yes, No)               |
| SMOKER           | Smoking Status (e.g., Current, Former, Never)   |

## Research Objectives
The primary goals of this analysis include:
- Investigate the correlation between sexual orientation and mental health metrics.
- Measure disparities in mental health across varying sexual orientation categories.
- Explore age as a potential modifier in the sexual orientation-mental health relationship.
 
## Statistical Methods
- **Descriptive Statistics**: Means, SDs, frequencies, percentages by sexual orientation (ANOVA, chi-square, α = 0.05).
- **Bivariate Analysis**: ANOVA/t-tests for mental health days; chi-square for categorical variables.
- **Multivariable Analysis**: GLM for mental health days; logistic regression for depressive disorder, adjusted for covariates.
- **Effect Modification**: Stratified analysis by age; tested age-sexual orientation interactions.
- **Measures of Association**: Effect estimates (95% CI) for continuous; odds ratios (95% CI) for binary outcomes.
- **Diagnostics**: Checked linearity, normality, homoscedasticity.

## Results
### Table 1: Overall Participant Characteristics
| Characteristic                  | Summary (n=106,285)         |
|---------------------------------|-----------------------------|
| **Sexual Orientation**          |                             |
| - Lesbian or Gay                | 2,213 (2.08%)              |
| - Straight/not gay              | 99,446 (93.57%)            |
| - Bisexual                      | 3,280 (3.09%)              |
| - Something else                | 1,346 (1.27%)              |
| **Sex**                         |                             |
| - Male                          | 44,662 (42.02%)            |
| - Female                        | 61,623 (57.98%)            |
| **Race**                        |                             |
| - White, Non-Hispanic           | 82,143 (77.29%)            |
| - Black, Non-Hispanic           | 9,560 (8.99%)              |
| - Asian, Non-Hispanic           | 2,419 (2.28%)              |
| - American Indian/Alaskan Native, Non-Hispanic | 1,725 (1.62%) |
| - Hispanic                      | 5,967 (5.61%)              |
| - Other race, Non-Hispanic      | 4,471 (4.21%)              |
| **Age**                         |                             |
| - 18-29                         | 12,492 (11.75%)            |
| - 30-39                         | 12,433 (11.70%)            |
| - 40-59                         | 34,620 (32.57%)            |
| - 60 and older                  | 46,740 (43.98%)            |
| **Income Category**             |                             |
| - Less than $50,000             | 78,257 (73.63%)            |
| - $50,000 or more               | 28,028 (26.37%)            |
| **BMI Category**                |                             |
| - Underweight                   | 2,008 (1.89%)              |
| - Normal weight                 | 30,656 (28.84%)            |
| - Overweight                    | 35,022 (32.95%)            |
| - Obese                         | 38,599 (36.32%)            |
| **Mental Health and Well-being** |                             |
| - Poor mental health days (mean, SD) | 7.081 (9.943)      |
| - Depressive Disorder           |                             |
|   - Yes                         | 32,670 (30.74%)            |
|   - No                          | 73,615 (69.26%)            |
| - Poor health days (mean, SD)   | 5.449 (9.462)              |
| **General Health**              |                             |
| - Excellent                     | 10,210 (9.61%)             |
| - Very good                     | 29,529 (27.78%)            |
| - Good                          | 34,422 (32.39%)            |
| - Fair                          | 21,873 (20.58%)            |
| - Poor                          | 10,251 (9.64%)             |
| **Health Insurance**            |                             |
| - Yes                           | 98,032 (92.24%)            |
| - No                            | 8,253 (7.76%)              |
| **Smoking Status**              |                             |
| - Current smoker - daily        | 14,384 (13.53%)            |
| - Current smoker - some days    | 5,458 (5.14%)              |
| - Former smoker                 | 31,329 (29.48%)            |
| - Never smoked                  | 55,114 (51.85%)            |

The analytic sample comprised 106,285 adults from the 2018 BRFSS, representing a broad demographic range. Most respondents identified as straight or not gay (93.6%), with bisexual (3.1%), lesbian or gay (2.1%), and “something else” (1.3%) groups also represented. Females made up 58% of the sample, and the majority were White, non-Hispanic (77%). Nearly 44% were aged 60 years or older, and about 74% reported annual incomes below $50,000. On average, participants reported 7 poor mental-health days and 5 poor physical-health days in the past month; 31% had been diagnosed with a depressive disorder. Most respondents had health-insurance coverage (92%), and smoking habits were mixed, with 52% never having smoked.

### Table 2: Participant Characteristics by Sexual Orientation
| Characteristic                                 | Straight (n=99,446) | Lesbian/Gay (n=2,213) | Bisexual (n=3,280) | Something else (n=1,346) |
| ---------------------------------------------- | ------------------- | --------------------- | ------------------ | ------------------------ |
| **Sex**                                        |                     |                       |                    |                          |
| - Male                                         | 41,846 (42.08%)     | 1,263 (57.07%)        | 1,008 (30.73%)     | 545 (40.49%)             |
| - Female                                       | 57,600 (57.92%)     | 950 (42.93%)          | 2,272 (69.27%)     | 801 (59.51%)             |
| **Race**                                       |                     |                       |                    |                          |
| - White, Non-Hispanic                          | 77,195 (77.63%)     | 1,664 (75.19%)        | 2,380 (72.56%)     | 904 (67.16%)             |
| - Black, Non-Hispanic                          | 9,031 (9.08%)       | 172 (7.77%)           | 257 (7.84%)        | 100 (7.43%)              |
| - Asian, Non-Hispanic                          | 2,261 (2.27%)       | 42 (1.90%)            | 68 (2.07%)         | 48 (3.57%)               |
| - American Indian/Alaskan Native, Non-Hispanic | 1,618 (1.63%)       | 29 (1.31%)            | 50 (1.52%)         | 28 (2.08%)               |
| - Hispanic                                     | 5,332 (5.36%)       | 174 (7.86%)           | 299 (9.12%)        | 162 (12.04%)             |
| - Other race, Non-Hispanic                     | 4,009 (4.03%)       | 132 (5.96%)           | 226 (6.89%)        | 104 (7.73%)              |
| **Age Category**                               |                     |                       |                    |                          |
| - 18–29                                        | 10,414 (10.47%)     | 475 (21.46%)          | 1,288 (39.27%)     | 315 (23.40%)             |
| - 30–39                                        | 11,272 (11.33%)     | 317 (14.32%)          | 675 (20.58%)       | 169 (12.56%)             |
| - 40–59                                        | 32,784 (32.97%)     | 765 (34.57%)          | 775 (23.63%)       | 296 (21.99%)             |
| - 60 and older                                 | 44,976 (45.23%)     | 656 (29.64%)          | 542 (16.52%)       | 566 (42.05%)             |
| **Income Category**                            |                     |                       |                    |                          |
| - Less than $50,000                            | 46,513 (53.73%)     | 1,084 (53.64%)        | 1,751 (63.10%)     | 786 (71.00%)             |
| - $50,000 or more                              | 40,060 (46.27%)     | 937 (46.36%)          | 1,024 (36.90%)     | 321 (29.00%)             |
| **BMI Category**                               |                     |                       |                    |                          |
| - Underweight                                  | 1,810 (1.82%)       | 53 (2.39%)            | 88 (2.68%)         | 57 (4.23%)               |
| - Normal weight                                | 28,444 (28.60%)     | 704 (31.81%)          | 1,086 (33.11%)     | 422 (31.35%)             |
| - Overweight                                   | 33,017 (33.20%)     | 707 (31.95%)          | 881 (26.86%)       | 417 (30.98%)             |
| - Obese                                        | 36,175 (36.38%)     | 749 (33.85%)          | 1,225 (37.35%)     | 450 (33.43%)             |
| **Mental Health Metrics**                      |                     |                       |                    |                          |
| - Poor mental health days (mean, SD)           | 6.87 (9.85)         | 8.61 (10.34)          | 11.05 (10.86)      | 10.23 (11.31)            |
| **Depressive Disorder**                        |                     |                       |                    |                          |
| - Yes                                          | 29,404 (29.57%)     | 943 (42.61%)          | 1,731 (52.77%)     | 592 (43.98%)             |
| - No                                           | 70,042 (70.43%)     | 1,270 (57.39%)        | 1,549 (47.23%)     | 754 (56.02%)             |
| - Poor health days (mean, SD)                  | 5.39 (9.46)         | 5.79 (9.27)           | 6.25 (9.21)        | 6.90 (10.11)             |
| **General Health**                             |                     |                       |                    |                          |
| - Excellent                                    | 9,566 (9.62%)       | 236 (10.66%)          | 295 (8.99%)        | 113 (8.40%)              |
| - Very good                                    | 27,696 (27.85%)     | 624 (28.20%)          | 930 (28.35%)       | 279 (20.73%)             |
| - Good                                         | 32,139 (32.32%)     | 745 (33.66%)          | 1,097 (33.45%)     | 441 (32.76%)             |
| - Fair                                         | 20,404 (20.52%)     | 445 (20.11%)          | 691 (21.07%)       | 333 (24.74%)             |
| - Poor                                         | 9,641 (9.69%)       | 163 (7.37%)           | 267 (8.14%)        | 180 (13.37%)             |
| **Health Insurance**                           |                     |                       |                    |                          |
| - Yes                                          | 91,948 (92.46%)     | 2,033 (91.87%)        | 2,877 (87.71%)     | 1,174 (87.22%)           |
| - No                                           | 7,498 (7.54%)       | 180 (8.13%)           | 403 (12.29%)       | 172 (12.78%)             |
| **Smoking Status**                             |                     |                       |                    |                          |
| - Current smoker – daily                       | 13,201 (13.27%)     | 402 (18.17%)          | 596 (18.17%)       | 185 (13.74%)             |
| - Current smoker – some days                   | 4,943 (4.97%)       | 156 (7.05%)           | 269 (8.20%)        | 90 (6.69%)               |
| - Former smoker                                | 29,594 (29.76%)     | 632 (28.56%)          | 779 (23.75%)       | 324 (24.07%)             |
| - Never smoked                                 | 51,708 (52.00%)     | 1,023 (46.23%)        | 1,636 (49.88%)     | 747 (55.50%)             |

- Sex distribution differed across sexual orientation groups, with males comprising 57.07% of lesbian/gay participants compared with 42.08% among straight participants, while females accounted for 69.27% of bisexual participants.

- Younger age groups were overrepresented among sexual minorities, particularly among bisexual individuals, where 39.27% were aged 18–29, compared with 10.47% among straight participants. Individuals identifying as “something else” also showed a higher concentration in this age group (23.40%).

- Lower household income was more common among sexual minority groups, with 63.10% of bisexual participants and 71.00% of those identifying as “something else” reporting incomes below $50,000, compared with 53.73% among straight participants.

- BMI category distributions varied by sexual orientation, with obesity prevalence ranging from 33.43% among those identifying as “something else” to 37.35% among bisexual participants.

- Depressive disorders were substantially more prevalent among sexual minorities, affecting 52.77% of bisexual individuals, 43.98% of those identifying as “something else,” and 42.61% of lesbian/gay participants, compared with 29.57% among straight participants.

- Average poor mental health burden was higher among sexual minorities, with bisexual participants reporting a mean of 11.05 days of poor mental health in the past 30 days, compared with 6.87 days among straight participants.

