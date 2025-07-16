
* HW6_Alexandra Chang
* PBHS 32410 / STAT 22401 - Winter 2024
* Homework 6: Tamoxifen Trial and Space Shuttle Failures

clear all
set more off

* Problem 1: Tamoxifen dataset
use tam_12.dta, clear
tabulate trt recur
tabulate trt death
logit recur trt
logit recur trt age bmi tumsiz
logit death trt age bmi tumsiz
logit ned trt age bmi tumsiz
logit endo trt

* Problem 2: O-ring dataset
use Orings_12.dta, clear
gen failed = (damage > 0)
logit failed temp
drop if flight == 18
logit failed temp
predict prob
gen predict_fail = (prob >= 0.5)
tabulate predict_fail failed
