{% snapshot tpch_customer_snapshot %}

{{ config(
    target_database='tpc_raw_data',
    target_schema='snapshots',
    unique_key='c_custkey',
    strategy='timestamp',
    updated_at='_etl_updated_timestamp',
)}}

select * from {{ source('tpch', 'customer') }}

{% endsnapshot %}