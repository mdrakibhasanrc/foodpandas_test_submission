
  
    

    create or replace table `foodpanda-bi-test-405316`.`production`.`Q3`
    
    

    OPTIONS()
    as (
      


SELECT
    country_name,
    vendor_name,
    total_gmv
FROM `foodpanda-bi-test-405316`.`production`.`stg_q3`
    );
  