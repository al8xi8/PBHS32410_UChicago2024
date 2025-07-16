
* HW5_Alexandra Chang
* PBHS 32410 / STAT 22401 - Winter 2024
* Homework 5: Zika Virus and Kidney Stones

clear all
set more off

* Problem 1: Zika infection counts
use Zika_12.dta, clear
tabulate netting
summarize infection, detail
regress infection netting, poisson
predict mu, mu
gen irr = exp(_b[netting])
gen diff = infection - mu
list infection mu diff

* Problem 2: Kidney stones
use stones_12.dta, clear
gen ir = kidney_stones / followup
tabstat kidney_stones followup, stats(mean sum)
regress kidney_stones sex, exposure(followup) poisson
regress kidney_stones one_kidney, exposure(followup) poisson
regress kidney_stones age, exposure(followup) poisson
regress kidney_stones sex one_kidney age, exposure(followup) poisson
