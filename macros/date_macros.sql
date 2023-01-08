{% macro bulk_extract(column_name, feed) -%}
    extract({{ column_name }} from {{ feed }})  as {{ column_name }},
{%- endmacro %}


-- Use in model
    -- warehouse_model.dim_date