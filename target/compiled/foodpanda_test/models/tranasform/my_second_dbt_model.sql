-- Use the `ref` function to select from other models

select *
from `foodpanda-bi-test-405316`.`production`.`my_first_dbt_model`
where id = 1