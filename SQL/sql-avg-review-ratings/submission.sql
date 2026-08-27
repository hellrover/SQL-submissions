select extract(MONTH from submit_date)as mth, product_id as product, 
round(avg(stars),2) as avg_stars
from reviews 
group by 1,2

