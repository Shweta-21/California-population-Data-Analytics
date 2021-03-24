SELECT county_name, gender, SUM(population) As total_population
FROM pop_proj
WHERE county_name like '%me%' and population >= 100
GROUP BY county_name, gender
ORDER BY county_name;