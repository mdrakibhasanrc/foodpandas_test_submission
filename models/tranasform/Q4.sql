{{ config(
    materialized="table"
) }}


SELECT
   date_local,
   country_name
   vendor_name,
   total_gmv
FROM {{ ref ('stg_q4')}}