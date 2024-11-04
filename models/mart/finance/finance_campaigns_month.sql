SELECT
FORMAT_DATE('%Y-%m', date_date) AS date_month
,SUM(ads_margin) AS ads_margin
,SUM(avg_basket) AS avg_basket
,SUM(operational_margine) AS operational_margine
,SUM(ads_cost) AS ads_cost
,SUM(ads_click) AS ads_click
,SUM(revenue) AS revenue
FROM {{ref("finance_campaigns_day")}}
GROUP BY date_month
ORDER BY date_month DESC