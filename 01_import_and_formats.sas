/********************************************************************
 File: 01_import_and_formats.sas
 Purpose: Import CSV (brfss.csv) and create readable formats.
 Author: Shaleen Tripathi
 Source: Project BRFSS 
********************************************************************/
libname project "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1";

/* Import CSV into WORK */
proc import
  datafile="C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1\brfss.csv"
  out=work.brfss_raw
  dbms=csv
  replace;
  getnames=yes;
run;

/* Create formats for readability */
proc format;
  value fmt_so
    1 = "Lesbian or Gay"
    2 = "Straight, not gay"
    3 = "Bisexual"
    4 = "Something else";

  value fmt_sex
    1 = "Male"
    2 = "Female";

  value fmt_race
    1 = "White, Non-Hispanic"
    2 = "Black, Non-Hispanic"
    3 = "Asian, Non-Hispanic"
    4 = "American Indian/Alaskan Native, Non-Hispanic"
    5 = "Hispanic"
    6 = "Other race, Non-Hispanic";

  value fmt_agecat
    1 = "18-29"
    2 = "30-39"
    3 = "40-59"
    4 = "60+";

  value fmt_incomecat
    0 = "Less than $50,000"
    1 = "At least $50,000";

  value fmt_bmicat
    1 = "Underweight"
    2 = "Normal weight"
    3 = "Overweight"
    4 = "Obese";

  value fmt_yesno
    1 = "Yes"
    2 = "No";

  value fmt_genhlth
    1 = "Excellent"
    2 = "Very good"
    3 = "Good"
    4 = "Fair"
    5 = "Poor";

  value fmt_healthplan
    1 = "Yes"
    2 = "No";

  value fmt_smoker
    1 = "Current - every day"
    2 = "Current - some days"
    3 = "Former smoker"
    4 = "Never smoked";
run;
