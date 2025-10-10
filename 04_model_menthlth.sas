/********************************************************************
 File: 04_model_menthlth.sas
 Purpose: Fit adjusted models for MENTHLTH (continuous)
********************************************************************/

/* Main GLM model */
proc glm data=project.brfss18;
  class SO (ref="Straight, not gay")
        sex1 (ref="Male")
        race (ref="White, Non-Hispanic")
        agecat (ref="18-29")
        incomecat (ref="Less than $50,000")
        bmicat (ref="Normal weight")
        HLTHPLN1 (ref="No")
        smoker (ref="Never smoked");
  model MENTHLTH = SO sex1 race agecat incomecat bmicat HLTHPLN1 smoker / solution clparm;
  format SO fmt_so. sex1 fmt_sex. race fmt_race. agecat fmt_agecat.
         incomecat fmt_incomecat. bmicat fmt_bmicat. HLTHPLN1 fmt_healthplan. smoker fmt_smoker.;
run;
quit;

/* Diagnostics used in Project 2 */
proc sgplot data=project.brfss18; scatter y=MENTHLTH x=SO; format SO fmt_so.; run;
proc sgplot data=project.brfss18; histogram MENTHLTH; run;

