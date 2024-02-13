select 
	country
	,sum(suicides_100k_pop)		as suicides_per_100k
from master m 
group by 1
order by 2 desc
