WITH RankedVendors AS (
    SELECT 
        o.country_name,
        v.vendor_name,
        ROUND(SUM(o.gmv_local),2) as total_gmv,
        DENSE_RANK() OVER(PARTITION BY o.country_name ORDER BY SUM(o.gmv_local) DESC) as rnk
    FROM 
        `foodpanda-bi-test-405316.foodpanda.Vendors` v
    INNER JOIN 
        `foodpanda-bi-test-405316.foodpanda.Orders` o
    ON
         v.id=o.vendor_id
    WHERE
        v.is_active = TRUE
    GROUP BY
        o.country_name,
        v.vendor_name
)
SELECT 
    country_name,
    vendor_name,
    total_gmv
FROM 
    RankedVendors
WHERE 
    rnk = 1
ORDER BY 
    country_name, 
    total_gmv DESC