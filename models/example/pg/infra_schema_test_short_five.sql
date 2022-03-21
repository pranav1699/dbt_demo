{{config(schema="demo_dbt")}}

with infra_schema_test_head as(
    select * from {{ ref('csv_seed_test_dbt')}}
),


final as (
    select * from infra_schema_test_head where full_name = 'Harry Miller'
)

select * from final 