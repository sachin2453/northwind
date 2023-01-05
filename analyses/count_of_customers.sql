with customers as (
select * from {{ ref('dim_customers') }}
)

select count(*) from customers