with payments as (
    select * from {{ref("stg_payments")}}
)
select
    order_id,
    sum(amount) AS amount_sum

from
    payments

group by
    order_id

having
    amount_sum < 0