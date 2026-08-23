select user_id, spend, transaction_date from(
SELECT user_id, spend,  transaction_date, row_number() OVER(
PARTITION BY user_id order by transaction_date) as ranking
from transactions
)as table1
where ranking = 3;