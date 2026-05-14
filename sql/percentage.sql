
select 
case when diabetes = 1 then 'diabetic' else 'non-diabetic' 
end as status,

round(count(*) * 100.0 / (select count(*) from eda),2 ) as percentage 
from eda
group by diabetes
order by diabetes desc;