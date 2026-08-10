-- Write your query below

select p.first_name, p.last_name, ad.city, ad.state
from person p
left outer join address ad on p.person_id=ad.person_id
