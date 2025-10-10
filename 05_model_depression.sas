/********************************************************************
 File: 05_model_depression.sas
 Purpose: 
-Fit adjusted logistic regression for ADDEPEV2 (depressive disorder)
-Run models stratified by agecat; test interaction.
********************************************************************/

proc logistic data=project.brfss18;
  class SO (ref="Straight, not gay")
        sex1 (ref="Male")
        race (ref="White, Non-Hispanic")
        agecat (ref="18-29")
        incomecat (ref="Less than $50,000")
        bmicat (ref="Normal weight")
        HLTHPLN1 (ref="No")
        smoker (ref="Never smoked") / param=ref;
  model ADDEPEV2 = SO sex1 race agecat incomecat bmicat HLTHPLN1 smoker;
  format SO fmt_so. sex1 fmt_sex. race fmt_race. agecat fmt_agecat
         incomecat fmt_incomecat bmicat fmt_bmicat HLTHPLN1 fmt_healthplan smoker fmt_smoker.;
run;

