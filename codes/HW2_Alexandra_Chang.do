
* HW2_Alexandra Chang
* PBHS 32410 / STAT 22401 - Winter 2024
* Homework 2: Multiple Linear Regression and Cigarette Sales

clear all
set more off

* Problem 1: Assessments
insheet using "assessments.txt", clear
graph matrix F P1 P2
regress F P1
regress F P2
regress F P1 P2
predict yhat, xb
gen residual = F - yhat
scatter residual P1

* Problem 2: Regression Sudoku (manual entry likely required)
* Complete using reconstructed values, not included here.

* Problem 3: BMI data
insheet using "BMIdat.txt", clear
correlate
regress BMI age
regress BMI glucose
regress BMI cholesterol
regress BMI age glucose cholesterol
regress BMI glucose cholesterol
predict yhat, xb
scatter yhat BMI

* Problem 4: Cigarette sales
insheet using "cigarettesales.txt", clear
regress Sales Age HS Income AA Female Price
test Female = 0
test Female HS = 0
regress Sales Age HS AA Female Price
