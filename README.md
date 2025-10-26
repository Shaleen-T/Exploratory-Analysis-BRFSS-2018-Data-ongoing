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

### Table 2. Participant Characteristics Stratified by Sexual Orientation  

| **Characteristic** | **Straight (n = 99,446)** | **Lesbian/Gay (n = 2,213)** | **Bisexual (n = 3,280)** | **Something Else (n = 1,346)** |
|--------------------:|:-------------------------:|:----------------------------:|:-------------------------:|:------------------------------:|
| **Sex (% Female)** | 57.9 | 42.9 | 69.3 | 59.5 |
| **Age ≥ 60 yrs (%)** | 45.2 | 29.6 | 16.5 | 42.1 |
| **Race – White non-Hispanic (%)** | 77.6 | 75.2 | 72.6 | 67.2 |
| **Income < $50k (%)** | 53.7 | 53.6 | 63.1 | 71.0 |
| **Obese (%)** | 36.4 | 33.9 | 37.4 | 33.4 |
| **Depressive disorder diagnosis (%)** | 29.6 | 42.6 | 52.8 | 44.0 |
| **Poor mental-health days (mean ± SD)** | 6.9 ± 9.9 | 8.6 ± 10.3 | 11.1 ± 10.9 | 10.2 ± 11.3 |
| **Health insurance coverage (%)** | 92.5 | 91.9 | 87.7 | 87.2 |
| **Never smoked (%)** | 52.0 | 46.2 | 49.9 | 55.5 |

Significant differences were observed between straight and non-straight participants across most demographic and health variables, except for health-insurance coverage (p = 0.512). Non-straight respondents were more likely to be male, younger, and current smokers. They also reported more poor mental-health days and a higher prevalence of depressive disorder (43 % vs 31 %). 

