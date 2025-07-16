
* HW4_Alexandra Chang
* PBHS 32410 / STAT 22401 - Winter 2024
* Homework 4: Ozone, Cigarette Sales, Brain Weight

clear all
set more off

* Problem 1: Ozone predictors
use ozone_data.dta, clear
regress ozone temp wind rad
predict residual, residuals
scatter residual ozone
predict sres, rstandard
scatter sres fitted
qnorm sres
predict lev, leverage
predict cook, cooksd
scatter lev id
scatter cook id

* Problem 2: Cigarette sales
use cigarettesales.txt, clear
regress Sales Age Income Price
predict res, residuals
predict sres, rstandard
scatter sres Age
scatter sres Income
scatter sres Price

* Problem 3: Brain weight
use brain_12.dta, clear
gen primate = (species == "primate")
gen ln_brain = log(brain)
gen ln_body = log(body)
regress ln_brain ln_body primate
gen interaction = ln_body * primate
regress ln_brain ln_body primate interaction
