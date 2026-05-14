
-- Average clinical metrics by diabetes status

select 
 case diabetes when 1 then 'diabetic' else 'non-diabetic'
 end as status,
 
 avg(HbA1c_level) as avg_hba1c,
 AVG(blood_glucose_level)  AS avg_glucose,
 avg (bmi) as avg_bmi,
 avg(age) as avg_age,
 avg(hypertension) *100 as hypertension_perc,
 avg(heart_disease)* 100 as heart_disease_perc
 
 from eda
 group by diabetes
 order by diabetes desc