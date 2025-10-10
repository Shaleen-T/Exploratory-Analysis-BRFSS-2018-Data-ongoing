/********************************************************************
 File: 06_age_stratified_models.sas
 Purpose: Run models stratified by agecat; test interaction.
********************************************************************/

proc sort data=project.brfss18; by agecat; run;

/* GLM for MENTHLTH by age group */
proc glm data=project.brfss18;
  by agecat;
  class SO (ref="Straight, not gay")
        sex1 (ref="Male")
        race (ref="White, Non-Hispanic")
        incomecat (ref="Less than $50,000")
        bmicat (ref="Normal weight")
        HLTHPLN1 (ref="No")
        smoker (ref="Never smoked");
  model MENTHLTH = SO sex1 race incomecat bmicat HLTHPLN1 smoker / solution clparm;
  format SO fmt_so. agecat fmt_agecat.;
run;
quit;

/* Logistic for ADDEPEV2 by age group*/
proc logistic data=project.brfss18 descending;
  by agecat;
  class SO (ref="Straight, not gay")
        sex1 (ref="Male")
        race (ref="White, Non-Hispanic")
        incomecat (ref="Less than $50,000")
        bmicat (ref="Normal weight")
        HLTHPLN1 (ref="No")
        smoker (ref="Never smoked") / param=ref;
  model ADDEPEV2 = SO sex1 race incomecat bmicat HLTHPLN1 smoker;
  format SO fmt_so. agecat fmt_agecat.;
run;

/* Interaction tests (single model with interaction term) */
proc glm data=project.brfss18;
  class SO agecat sex1 race incomecat bmicat HLTHPLN1 smoker;
  model MENTHLTH = SO agecat SO*agecat sex1 race incomecat bmicat HLTHPLN1 smoker / solution;
run;

proc logistic data=project.brfss18 descending;
  class SO agecat sex1 race incomecat bmicat HLTHPLN1 smoker / param=ref;
  model ADDEPEV2 = SO agecat SO*agecat sex1 race incomecat bmicat HLTHPLN1 smoker;
run;
