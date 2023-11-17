{{ config(
    materialized="view"
) }}


SELECT 
   v.vendor_name,
   COUNT(DISTINCT o.customer_id) as customer_count,
   SUM(o.gmv_local) as total_gmv
FROM 
   `foodpanda-bi-test-405316.foodpanda.Vendors` v
INNER JOIN 
    `foodpanda-bi-test-405316.foodpanda.Orders` o
ON
   v.id=o.vendor_id
WHERE
  v.country_name='Taiwan'
GROUP BY
     v.vendor_name
ORDER BY
    total_gmv desc