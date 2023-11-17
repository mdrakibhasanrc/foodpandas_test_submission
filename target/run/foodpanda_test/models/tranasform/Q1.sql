
  
    

    create or replace table `foodpanda-bi-test-405316`.`production`.`Q1`
    
    

    OPTIONS()
    as (
      

SELECT
  country_name,
  total_gmv,
FROM `foodpanda-bi-test-405316`.`production`.`stg_q1`
    );
  