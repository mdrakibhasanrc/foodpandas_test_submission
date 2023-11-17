{{ config(
    materialized="table"
) }}


SELECT
    country_name,
    vendor_name,
    total_gmv
FROM {{ ref ('stg_q3')}}