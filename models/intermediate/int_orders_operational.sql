Select
orders_id
,date_date
,SUM(quantity) AS quantity
,SUM(revenue) AS revenue
,ROUND(SUM((margin + shipping_fee) - (logcost + ship_cost)),2) AS operational_margin
FROM {{ref("int_orders_margin")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)
GROUP BY orders_id, date_date
ORDER BY orders_id DESC
