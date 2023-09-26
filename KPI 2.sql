##### 2.Average Hourly rate of Male Research Scientist

use project;
select Jobrole,Gender,round(avg(HourlyRate),2) as AverageHourlyRate from hr_1 where jobrole='Research scientist' and gender='Male';