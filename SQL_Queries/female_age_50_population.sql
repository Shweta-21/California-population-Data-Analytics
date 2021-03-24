SELECT county_name,COUNT(age),SUM(population) as total_population 
from pop_proj where gender = "female" and age>= 50
GROUP BY county_name, gender 
ORDER BY county_name;