with customers as (
select customer_id from {{ ref('dim_customers') }}
)

select count(customer_id) as customer_count from customers