#### 6 ---Attrition rate Vs Year since last promotion relation

use project;

select round(count(1)/50000*100,2) as Attrition_Rate,
count(CASE WHEN YearsSinceLastPromotion>= 1 AND YearsSinceLastPromotion < 5 THEN 1 END) AS '1 - 5 yrs',
count(CASE WHEN YearsSinceLastPromotion >=6 AND YearsSinceLastPromotion < 10 THEN 1 END) AS '6 - 10 yrs',
count(CASE WHEN YearsSinceLastPromotion>= 11 AND YearsSinceLastPromotion < 15 THEN 1 END) AS '11 - 15 yrs',
count(CASE WHEN YearsSinceLastPromotion>= 16 AND YearsSinceLastPromotion < 20 THEN 1 END) AS '16 - 20 yrs',
count(CASE WHEN YearsSinceLastPromotion>= 21 AND YearsSinceLastPromotion < 25 THEN 1 END) AS '21 - 25 yrs',
count(CASE WHEN YearsSinceLastPromotion>= 26 AND YearsSinceLastPromotion < 30 THEN 1 END) AS '26 - 30 yrs',
count(CASE WHEN YearsSinceLastPromotion>= 31 AND YearsSinceLastPromotion < 35 THEN 1 END) AS '31 - 35 yrs',
count(CASE WHEN YearsSinceLastPromotion>= 36 AND YearsSinceLastPromotion < 40 THEN 1 END) AS '36 - 40 yrs' 
from hr_2 
inner join hr_1
on 
hr_1.EmployeeNumber=hr_2.EmployeeNumber group by Attrition;