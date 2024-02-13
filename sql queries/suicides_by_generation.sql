select 
	generation
	,sum(suicides_no)	as nr_of_suicides
from master 
group by 1
order by 2 desc
