{{ config(materialized="table") }}

select "age" as report, age, count(*) as count
FROM `rosy-strata-449213-j9.thelook.anil_users`
group by age