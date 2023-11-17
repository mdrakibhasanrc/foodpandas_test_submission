

  create or replace view `foodpanda-bi-test-405316`.`production`.`q1`
  OPTIONS()
  as 

SELECT 
    country_name,
    ROUND(sum(gmv_local),2) as total_gmv
FROM `foodpanda-bi-test-405316.foodpanda.Orders`
 GROUP BY
     country_name
 ORDER BY
     total_gmv desc;;

