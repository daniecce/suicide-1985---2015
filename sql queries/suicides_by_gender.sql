select 
	suicide_year 												as year 
	,sum(case when sex = 'male' then suicides_no else 0 end)	as male
	,sum(case when sex = 'female' then suicides_no else 0 end)	as female
from master
group by 1
order by 1
limit 31



