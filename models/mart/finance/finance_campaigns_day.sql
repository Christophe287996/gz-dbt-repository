Select
date_date
,ROUND(average_basket,2) AS avg_basket
,ROUND(operational_margine,2) AS operational_margine
,ads_cost
,ads_click
,ROUND(revenue,2) AS revenue
,ROUND(operational_margine - ads_cost) AS ads_margin
FROM {{ref("finance_days")}}
JOIN {{ref("int_campaigns_day")}}
USING (date_date)
ORDER BY date_date DESC