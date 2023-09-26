###### 3.Attrition rate Vs Monthly income stats

use project;
select  round(count(1)/50000*100,2) as AttritionRate,
count(CASE WHEN MonthlyIncome>= 1000 AND MonthlyIncome < 10000 THEN 1 END) AS '1000 - 10000 ₹',
count(CASE WHEN MonthlyIncome >=10000 AND MonthlyIncome < 20000 THEN 1 END) AS '10000 - 20000 ₹',
count(CASE WHEN MonthlyIncome>= 20000 AND MonthlyIncome < 30000 THEN 1 END) AS '20000 - 30000 ₹',
count(CASE WHEN MonthlyIncome>= 30000 AND MonthlyIncome < 40000 THEN 1 END) AS '30000 - 40000 ₹',
count(CASE WHEN MonthlyIncome>= 40000 AND MonthlyIncome < 50000 THEN 1 END) AS '40000 - 50000 ₹',
count(CASE WHEN MonthlyIncome>= 50000 AND MonthlyIncome < 60000 THEN 1 END) AS '50000 - 60000 ₹'
 from hr_2 
inner join hr_1 on hr_1.EmployeeNumber=hr_2.EmployeeNumber group by Attrition;
