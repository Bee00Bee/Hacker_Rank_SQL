select 
convert (decimal (12, 4), s.lat_n) from station as s
	where
	(
	select count(lat_n) from station
		where lat_n < s.lat_n
	)
	=
	(
	select count(lat_n) from station
		where lat_n > s.lat_n
	)
	;
