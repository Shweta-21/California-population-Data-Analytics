SELECT county_name, gender, SUM(population) As total_population
FROM pop_proj
WHERE date_year = 2010 and gender="female" 
GROUP BY county_name, gender
ORDER BY county_name;