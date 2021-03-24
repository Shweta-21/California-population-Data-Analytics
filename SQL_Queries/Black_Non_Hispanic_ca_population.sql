SELECT county_name, gender, SUM(population) As total_population
FROM pop_proj
WHERE  race="Black, Non-Hispanic"
GROUP BY county_name, gender
ORDER BY county_name;