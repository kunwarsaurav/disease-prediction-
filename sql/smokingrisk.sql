
select 
smoking_history,
count(*) as total_patient,
sum(diabetes) as diabetic_count,
round(sum(diabetes)* 100 / count(*) ,2) as diabetes_rate_per

from eda
group by smoking_history
order by diabetes_rate_per desc