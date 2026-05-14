

select 
case 
when HbA1c_level <5.7 then 'normal'
when HbA1c_level between 5.7 and 6.4 then 'pre diabetic'
else 'diabetic range'
end as hba1c_category,

count(*) as total_patients,
avg(diabetes) * 100 as diabetes_risk_per

from eda
group by hba1c_category
order by diabetes_risk_per asc;