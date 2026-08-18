select sender_id, count(sender_id) as message_count
from messages
where extract(YEAR from sent_date) = '2022' and EXTRACT(MONTH from sent_date)='08'
group by sender_id
order by count(sender_id) desc limit 2;