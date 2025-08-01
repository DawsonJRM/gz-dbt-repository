
  SELECT
      s.products_id,
      date_date,
      orders_id,
      revenue,
      quantity,
      purchased_price,
      ROUND(s.quantity*p.purchased_price,2) AS purchase_cost,
      ROUND(s.revenue - s.quantity*p.purchased_price, 2) AS margin
  FROM {{ref("stg_raw__sales")}} s
  LEFT JOIN {{ref("stg_raw__product")}} p
      USING (products_id)