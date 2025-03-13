{{ config(materialized='table') }}

with 
big_data as
(
    select id, first_name
    from `rosy-strata-449213-j9.thelook.anil_users`
)
select *
from big_data