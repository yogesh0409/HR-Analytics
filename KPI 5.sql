##### 5.Job Role Vs Work life balance

use project;
SET SQL_SAFE_UPDATES = 0;
select Jobrole,if(WorkLifeBalance =1,'Excellent',
if(WorkLifeBalance =2 ,'Good',
if(WorkLifeBalance =3 ,'Average','Poor')))as Worklifebalance from hr_1
inner join hr_2 on hr_1.EmployeeNumber=hr_2.EmployeeNumber group by JobRole;
