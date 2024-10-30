Select
orders_id
,date_date
,quantity
,revenue
,(margin-ship_cost-shipping_fee-logcost) AS operational_margin
FROM {{ref("int_orders_margin")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)
ORDER BY orders_id DESC
