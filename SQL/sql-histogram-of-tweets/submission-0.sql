--write code below

select tweet_bucket, count(tweet_bucket) as users_num
from (
SELECT user_id, count(user_id) as tweet_bucket
FROM tweets
where tweet_date >= '01/01/2022 00:00:00'
  AND tweet_date < '01/01/2023 00:00:00'
group by user_id
)as table1
group by tweet_bucket