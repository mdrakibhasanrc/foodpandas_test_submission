{{ config(
    materialized="table"
) }}

SELECT
  country_name,
  total_gmv,
FROM {{ ref('stg_q1') }}