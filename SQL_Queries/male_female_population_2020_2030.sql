SELECT p.county_name, 
	SUM(p.population) AS Male, 
    fem_pop.Female FROM 
		(SELECT county_name, SUM(population) AS Female
		FROM pop_proj
		WHERE date_year BETWEEN 2020 and 2030 and gender = 'Female'
		GROUP BY county_name
		ORDER BY county_name) AS fem_pop
JOIN pop_proj p
ON p.county_name = fem_pop.county_name
WHERE p.date_year  BETWEEN 2020 and 2030 AND p.gender = 'Male'
GROUP BY p.county_name
ORDER BY p.county_name;
