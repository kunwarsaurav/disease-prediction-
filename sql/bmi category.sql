
select 
case 
when bmi <18.5 then 'underweight'
when bmi between 18.5 and 24.9 then 'normal'
when bmi between 25 and 29.9 then 'overweight'
else 'obese'
end as bmi_category,

count(*) as total_patients,
avg(diabetes) * 100 as diabetes_risk_per

from eda
group by bmi_category
order by diabetes_risk_per asc;