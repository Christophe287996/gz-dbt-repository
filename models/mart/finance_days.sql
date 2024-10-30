Select
date_date
,count(orders_id) AS nb_transactions
,SUM(revenue) AS revenue
,(SUM(revenue)/COUNT(orders_id)) AS average_basket
,SUM(operational_margin) AS operational_margine
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC