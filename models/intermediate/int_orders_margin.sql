Select 
      purchase_cost
    , margin
    , orders_id
    , date_date
    , revenue
    , quantity
FROM {{ref("int_sales_margin")}}
JOIN {{ref("stg_raw__ship")}}
USING (products_id)