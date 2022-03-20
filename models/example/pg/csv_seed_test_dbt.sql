{{config(schema="dbt_demo")}}


with infer_schema as (
    select * from {{ ref('infer_schema_test')}}
),

final as (
    select * from infer_schema
)

select * from final