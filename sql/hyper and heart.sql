
select 
case when hypertension = 1 and heart_disease = 1 then 'both conditions'
when hypertension =1  or heart_disease = 1 then 'one condition'
else 'no conditions'

end as health_status,

count(*) as total_patients,
avg(diabetes) * 100 as diabetes_risk_per 
from eda
group by health_status
order by diabetes_risk_per desc;