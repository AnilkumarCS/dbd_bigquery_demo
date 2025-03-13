
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with 
big_data as
(
    select id, first_name
    from `rosy-strata-449213-j9.thelook.anil_users`

)

select *
from big_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
