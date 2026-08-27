select customer_id 
from (
SELECT cc.customer_id,p.product_category
from products p 
join customer_contracts cc on p.product_id = cc.product_id 
group by cc.customer_id, p.product_category
) table1
group by customer_id 
having count(*) = 3