
{{config(schema='dbt_demo') }}
with logs_ftmo_orders_dbt as(
    select * from {{ source('airflow', 'ftmo_orders') }}
),
final as (
    select * from logs_ftmo_orders_dbt
)


select * from final