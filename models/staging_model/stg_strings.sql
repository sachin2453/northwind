{{ config(
    materialized = 'incremental',
    unique_key = 'string_id'
) }}

with source as (
    select * from {{ source('northwind', 'strings') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source