declare @var int
select @var = 1
while @var <=20
	begin
	print replicate('* ', @var)
	set @var -= 1
	end
