{{ config(
    materialized="table"
) }}


SELECT
   vendor_name,
   customer_count,
   total_gmv
FROM {{ ref ('stg_q2')}}
