
* HW1_Alexandra Chang
* PBHS 32410 / STAT 22401 - Winter 2024
* Homework 1: Triglyceride, Waist Circumference, Anscombe, Heights

clear all
set more off

* Problem 2: Triglyceride and Waist Circumference
insheet using "triglyc.txt", clear
scatter triglyceride waist
correlate triglyceride waist
regress triglyceride waist
predict yhat, xb
gen residual = triglyceride - yhat
scatter residual waist

* Problem 3: Anscombe's Quartet
insheet using "anscombe.txt", clear
regress y1 x1
predict resid1, residuals
scatter resid1 x1

regress y2 x2
predict resid2, residuals
scatter resid2 x2

* Problem 4: Heights of Married Couples
insheet using "heights.txt", clear
gen mht_in = mht / 2.54
gen fht_in = fht / 2.54

summarize mht fht
gen cov_cm = (mht - r(mean)) * (fht - r(mean))
gen cov_in = (mht_in - r(mean)) * (fht_in - r(mean))
gen diff_5cm = mht - 5
correlate mht fht
regress fht mht
predict yhat_ht, xb
gen residual_ht = fht - yhat_ht
scatter residual_ht mht

* Problem 5: Chapter 1 Practice Data (manual entry required)
* Replace this section with appropriate data entry and regression
