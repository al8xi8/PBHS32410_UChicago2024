
* HW3_Alexandra Chang
* PBHS 32410 / STAT 22401 - Winter 2024
* Homework 3: Fertilizer Effects and Education Expenditure

clear all
set more off

* Problem 1: Fertilizer experiment
insheet using "fert.txt", clear
gen F1 = (fertilizer == 1)
gen F2 = (fertilizer == 2)
gen F3 = (fertilizer == 3)
regress yield F1 F2 F3

* Problem 2: Education expenditure
use educ_expend_12.dta, clear
graph matrix Y X1 X2 X3
regress Y X1 X2 X3
tabulate yearint, gen(yint)
regress Y X1 X2 X3 yint2 yint3
gen x2y2 = X2 * yint2
gen x2y3 = X2 * yint3
regress Y X1 X2 X3 yint2 yint3 x2y2 x2y3

* Problem 3: ctDNA interaction
gen trt_egfr = Trt * EGFR
regress ctDNA Trt EGFR trt_egfr
