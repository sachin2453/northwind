
{% set dbt_old_relation=ref('stg_customers') %}
{% set dbt_relation=ref('dim_customers') %}

{{ audit_helper.compare_relations(
    a_relation=dbt_old_relation,
    b_relation=dbt_relation,
    exclude_columns=["loaded_at"],
    primary_key="order_id"
) }}
