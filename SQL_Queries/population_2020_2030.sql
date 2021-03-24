SELECT county_name , SUM(population) as total_population, gender from pop_proj where date_year BETWEEN 2020 and 2030
GROUP BY county_name, gender
ORDER BY county_name;