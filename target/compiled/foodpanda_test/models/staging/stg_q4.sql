WITH RankedVendors AS (
    SELECT
        o.date_local,
        v.vendor_name,
        o.country_name,
        EXTRACT(YEAR FROM o.date_local) AS order_year,
        ROUND(SUM(o.gmv_local),2) AS total_gmv,
        ROW_NUMBER() OVER(PARTITION BY o.country_name, EXTRACT(YEAR FROM o.date_local) ORDER BY SUM(o.gmv_local) DESC) AS rnk
    FROM
        `foodpanda-bi-test-405316.foodpanda.Vendors` v
    INNER JOIN
        `foodpanda-bi-test-405316.foodpanda.Orders` o ON v.rdbms_id = o.rdbms_id
    GROUP BY
        v.vendor_name,
        o.country_name,
        order_year,
        o.date_local
)

SELECT
    date_local,
    country_name,
    vendor_name,
    total_gmv
FROM
    RankedVendors
WHERE
    rnk <= 2
ORDER BY
    country_name,
     order_year,
     rnk,
     date_local