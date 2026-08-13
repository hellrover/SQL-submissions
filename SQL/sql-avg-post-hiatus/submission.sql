select user_id, EXTRACT(DAY from MAX(post_date)- MIN(post_date)) as days_between
from posts
where EXTRACT(YEAR from post_date)='2021'
group by user_id
having count(post_id)>1