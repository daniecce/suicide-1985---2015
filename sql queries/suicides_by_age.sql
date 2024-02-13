select 
	suicide_year
	,sum(case when age = '5-14 years'  then suicides_no else 0 end)	as 5_14_years 
	,sum(case when age = '15-24 years' then suicides_no else 0 end)	as 15_24_years
	,sum(case when age = '25-34 years' then suicides_no else 0 end)	as 25_34_years
	,sum(case when age = '35-54 years' then suicides_no else 0 end)	as 35_54_years
	,sum(case when age = '55-74 years' then suicides_no else 0 end) as 55_74_years
	,sum(case when age = '75+ years'   then suicides_no else 0 end)	as 75years
from master 
group by 1
order by 1 asc
