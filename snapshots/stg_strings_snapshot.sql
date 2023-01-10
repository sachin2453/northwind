{% snapshot stg_strings_snapshot %}

{{
    config(
      target_database='dbtlabs-373301',
      target_schema='snapshot',
      unique_key='string_id',

      strategy='timestamp',
      updated_at='ingestion_timestamp',
    )
}}

select * from {{ ref('stg_strings') }}

{% endsnapshot %}