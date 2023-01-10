{{ config(
    materialized = 'incremental',
    unique_key = 'string_id',
    incremental_strategy="merge",
    partition_by={
      "field": "string_id",
      "data_type": "int64",
     "range": {
        "start": 0,
        "end": 115,
        "interval": 10
      }}
) }}


with source as (
    select * from {{ source('northwind', 'strings') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp,
{% if is_incremental() %}
"incremental"
{% else %}
"full"
{% endif %} as build_source,
    
from source s

where 1=1

{% if is_incremental() %} 
AND s.string_data != (SELECT string_data FROM {{ this }} where string_id = s.string_id)
{% endif %}