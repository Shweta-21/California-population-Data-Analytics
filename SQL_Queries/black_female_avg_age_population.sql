SELECT county_name,avg (age),SUM(population) as total_population 
from pop_proj where gender = "female" and race = "Black, Non-Hispanic"
GROUP BY county_name
ORDER BY county_name;
