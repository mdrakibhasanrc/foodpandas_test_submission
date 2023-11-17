
  
    

    create or replace table `foodpanda-bi-test-405316`.`production`.`Q2`
    
    

    OPTIONS()
    as (
      


SELECT
   vendor_name,
   customer_count,
   total_gmv
FROM `foodpanda-bi-test-405316`.`production`.`stg_q2`
    );
  