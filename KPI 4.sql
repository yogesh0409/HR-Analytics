##### 4.Average working years for each Department


use project;
select Department,round(avg(YearsAtCompany),1) as AverageWorkingYears from hr_1
inner join hr_2
on hr_1.EmployeeNumber=hr_2.EmployeeNumber
group by department;