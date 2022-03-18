
{{ config(materialized='table') }}

with testone as(
    select * from {{ ref('my_first_dbt_model') }}
),
testtwo as(
    select * from {{ ref('my_second_dbt_model') }}
)


select * from testone, testtwo
