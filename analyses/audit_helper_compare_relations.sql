
{% set dbt_old_relation= source ('northwind', 'customer') %}
{% set dbt_relation=ref('stg_customers') %}

{{ audit_helper.compare_relations(
    a_relation=dbt_old_relation,
    b_relation=dbt_relation,
    primary_key="order_id"
) }}
