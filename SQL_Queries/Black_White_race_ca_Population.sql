SELECT p.county_name, 
	SUM(p.population) AS White, 
    black_pop.Black FROM 
		(SELECT county_name, SUM(population) AS Black
		FROM pop_proj
		WHERE date_year = 2014 and race = 'Black, Non-Hispanic'
		GROUP BY county_name
		ORDER BY county_name) AS black_pop
JOIN pop_proj p
ON p.county_name = black_pop.county_name
WHERE p.date_year = 2014 AND p.race = 'White, Non-Hispanic'
GROUP BY p.county_name
ORDER BY p.county_name;