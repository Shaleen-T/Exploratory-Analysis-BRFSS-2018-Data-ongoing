/********************************************************************
 File: 03_descriptives_bivariate.sas
 Purpose: Produce Table 1 and bivariate tests (chi-square / ANOVA)
********************************************************************/

/* 1) Overall means for continuous vars by sexual orientation */

proc means data=project.brfss18 mean std maxdec=1;
  class SO;
  var MENTHLTH POORHLTH;
  format SO fmt_so.;
run;

/* 2) ANOVA for MENTHLTH across SO groups */
proc glm data=project.brfss18;
  class SO;
  model MENTHLTH = SO;
  means SO / tukey alpha=0.05;
  format SO fmt_so.;
run;
quit;

/* 3) Chi-square tests for categorical vars vs SO */
%macro chisq(var);
  proc freq data=project.brfss18;
    tables &var.*SO / chisq;
    format SO fmt_so. &var. ;
  run;
%mend;

%chisq(sex1);
%chisq(race);
%chisq(agecat);
%chisq(incomecat);
%chisq(bmicat);
%chisq(GENHLTH);
%chisq(HLTHPLN1);
%chisq(SMOKER);
%chisq(ADDEPEV2);
