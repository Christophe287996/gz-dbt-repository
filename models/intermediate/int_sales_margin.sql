Select 
     ROUND((SUM(purchse_price)*SUM(quantity)),2) AS purchase_cost
    ,ROUND(((SUM(purchse_price)*SUM(quantity))-revenue),2) AS margin
FROM {{ref("stg_raw__sales")}}
JOIN {{ref("stg_raw__product")}}
USING (products_id)
GROUP BY revenue