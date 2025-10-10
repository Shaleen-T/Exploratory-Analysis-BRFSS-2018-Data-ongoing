/********************************************************************
 File: 02_clean_and_label.sas
 Purpose: Data cleaning, recoding, create analytic variables.

********************************************************************/

libname project "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1";

data project.brfss18;
  set work.brfss_raw;

  /* --- Recode explicit missing values to SAS missing --- */
  if SO in (7, 9) then SO = .;
  if sex1 in (7, 9) then sex1 = .;
  if income2 in (77, 99) then income2 = .;
  if MENTHLTH in (77, 99) then MENTHLTH = .;
  if ADDEPEV2 in (7, 9) then ADDEPEV2 = .;
  if POORHLTH in (77, 99) then POORHLTH = .;
  if GENHLTH in (7, 9) then GENHLTH = .;
  if HLTHPLN1 in (7, 9) then HLTHPLN1 = .;

  /* Drop observations missing on key variables */
  if SO = . or sex1 = . or ADDEPEV2 = . or HLTHPLN1 = . then delete;

  /* --- Create agecat: 18-29, 30-39, 40-59, 60+ (from original AGE codes) --- */
  if AGE in (1,2) then agecat = 1;
  else if AGE in (3,4) then agecat = 2;
  else if 5 <= AGE <= 8 then agecat = 3;
  else if AGE >= 9 then agecat = 4;
  else agecat = .;

  /* --- Income category: 0 = <50k, 1 = >=50k --- */
  if income2 <= 6 then incomecat = 0;
  else if income2 in (7,8) then incomecat = 1;
  else incomecat = .;

  /* --- Keep the 4-level SO variable (SO) but create a dichotomous var if needed --- */
  if SO = 2 then so_dichot = 1; else so_dichot = 0;

  /* --- Recode special codes for days variables: 88 -> 0 (none) --- */
  if MENTHLTH = 88 then MENTHLTH = 0;
  if POORHLTH = 88 then POORHLTH = 0;

  /* --- Labels for clarity --- */
  label so_dichot = "Dichotomous SO (1=Straight)";
  label ADDEPEV2 = "Ever told you have a depressive disorder (1=Yes)";
  label MENTHLTH = "Poor mental health days (0-30)";

  /* --- Apply formats defined earlier --- */
  format SO fmt_so. sex1 fmt_sex. race fmt_race. agecat fmt_agecat.
         incomecat fmt_incomecat. bmicat fmt_bmicat. ADDEPEV2 fmt_yesno.
         GENHLTH fmt_genhlth. HLTHPLN1 fmt_healthplan. smoker fmt_smoker.;
run;
