### 1.Average Attrition rate for all Departments----

use project;
SET SQL_SAFE_UPDATES = 0;
update hr_1 set attrition =1 where attrition ='Yes';
update hr_1 set attrition =0 where attrition ='NO';
select Department,round(avg(attrition)*100,2) as 'Average Attrition Rate' from hr_1 group by department;
