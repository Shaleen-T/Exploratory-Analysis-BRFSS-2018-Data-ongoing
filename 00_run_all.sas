/********************************************************************
 File: 00_run_all.sas
 Purpose: Master script to run the whole workflow in order.
********************************************************************/

/*  Run all SAS scripts in order */
%include "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1\code\01_import_and_formats.sas";
%include "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1\code\02_clean_and_label.sas";
%include "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1\code\03_descriptives_bivariate.sas";
%include "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1\code\04_model_menthlth.sas";
%include "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1\code\05_model_depression.sas";
%include "C:\Users\Shaleen Tripathi\Desktop\SAS PROJECT1\code\06_age_stratified_models.sas";
