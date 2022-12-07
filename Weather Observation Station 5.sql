select city, len(city) from station 
order by len(city) asc, city asc
limit 1;
    
select city, len(city) from station 
order by len(city) desc, city asc
limit 1;
