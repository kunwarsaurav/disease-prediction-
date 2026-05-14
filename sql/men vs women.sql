
select gender ,
count(*) as total_patients,
sum(diabetes) as diabetic_count

from eda
group by gender;