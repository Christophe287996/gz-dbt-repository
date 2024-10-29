Select
    int_sales_margin.orders_id
    , date_date
    , revenue
    , quantity
    , purchase_cost
    , margin
FROM {{ref("int_sales_margin")}}
JOIN {{ref("stg_raw__sales")}}
USING (products_id)
GROUP BY orders_id
ORDER BY orders_id DESC