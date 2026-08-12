-- Write your query below

Select left_operand, operator, right_operand,
(case when operator = '>' then left_val > right_val
when operator = '<' then left_val < right_val
when operator = '=' then left_val = right_val
end) as value
from (
select e.left_operand, e.operator, e.right_operand, v.value as left_val, vr.value as right_val
from expressions e
join variables v on v.name=e.left_operand
join variables vr on vr.name= e.right_operand
)