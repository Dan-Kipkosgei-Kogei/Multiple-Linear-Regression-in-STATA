use "C:\Users\Administrator\Desktop\Data Science\Student_Performance.dta" 
use Student_Performance.dta, clear
*Summarize the data variables
summarize
twoway scatter performance hours
* Data Visualization
twoway scatter performance hours
* add a line
twoway (scatter performance hours) (lfit performance hours)
* Visualisation of performance by the number of hours studied
twoway scatter performance hours
* Visualisation of performance by hours studied
twoway scatter performance hours, title("Performance vs Study Hours") xtitle("Study Hours") ytitle("Performance (Marks)") xsize(3) ysize(2)
graph export "C:\Users\Administrator\Desktop\Data Science\hours1.png", as(png) replace
twoway (scatter performance previous) (lfit performance previous)
twoway (scatter performance previous, mcolor(red))(lfit performance previous, lcolor(blue)), title("Relationship between Previous and Current Performance")
gen id = _n
twoway (line previous id, lcolor(blue)) (line performance id, lcolor(red)), title("Previous vs Current Performance") legend(label(1 "Previous Marks") label(2 "Current Performance"))
twoway (line previous id, lcolor(blue)) (line performance id, lcolor(red)), title("Comparison of Previous and Current Performance") legend(label(1 "Previous Marks") label(2 "Current Performance"))
graph export "C:\Users\Administrator\Desktop\Data Science\currentandpreviousmarks.png", as(png) replace
graph bar (mean) performance, over(curricular)
graph bar (mean) performance, over(curricular) title("Average Performance by Curricular Participation") ytitle("Mean Performance (Marks)")
graph export "C:\Users\Administrator\Desktop\Data Science\extracurricular.png", as(png) replace
twoway scatter performance sleep, title("Performance vs Sleep Hours") xtitle("Sleep Hours") ytitle("Performance (Marks)") xsize(3) ysize(2)
graph export "C:\Users\Administrator\Desktop\Data Science\sleep.png", as(png) replace
twoway scatter performance papers, title("Performance vs Papers Revised") xtitle("Papers Revised") ytitle("Performance (Marks)") xsize(3) ysize(2)
graph export "C:\Users\Administrator\Desktop\Data Science\papers.png", as(png) replace
regress performance hours previous sleep papers curricular
vif
regress performance hours previous sleep papers curricular
rvfplot, yline(0)
predict resid, residuals
histogram resid, normal
graph export "C:\Users\Administrator\Desktop\Data Science\normality of residuals.png", as(png) replace
rvfplot, yline(0)
graph save Graph "C:\Users\Administrator\Desktop\Data Science\constant variance.gph"
 rvfplot, yline(0)
graph export "C:\Users\Administrator\Desktop\Data Science\constant variance.png", as(png) replace
