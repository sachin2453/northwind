{% set old_fct_orders_query %}
  select  *
  from source ('northwind', 'customer')
{% endset %}

{% set new_fct_orders_query %}
  select *
  from ref('stg_customers')
{% endset %}

{{ audit_helper.compare_queries(
    a_query=old_fct_orders_query,
    b_query=new_fct_orders_query,
    primary_key="id"
) }}

