
  
    

    create or replace table `foodpanda-bi-test-405316`.`production`.`Q4`
    
    

    OPTIONS()
    as (
      


SELECT
   date_local,
   country_name
   vendor_name,
   total_gmv
FROM `foodpanda-bi-test-405316`.`production`.`stg_q4`
    );
  