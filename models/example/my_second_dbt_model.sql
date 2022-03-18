
-- Use the `ref` function to select from other models
{{ config(materialized='table') }}

with source_data_one as (

    select * from public.meat where name  = 'chicken'

)

select *
from source_data_one