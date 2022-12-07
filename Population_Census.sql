select sum(c.population) from city as c
inner join country as co on
co.code = c.CountryCode
where co.continent = 'Asia'
