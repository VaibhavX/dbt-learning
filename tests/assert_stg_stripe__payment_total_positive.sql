select
    order_id,
    sum(amount) as payment_total
from {{ ref('stg_stripe__payments') }}
group by order_id
having payment_total < 0