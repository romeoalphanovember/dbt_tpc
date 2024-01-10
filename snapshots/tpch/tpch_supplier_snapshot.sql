{% snapshot tpch_supplier_snapshot %}

{{ config(
    target_database='tpc_raw_data',
    target_schema='snapshots',
    unique_key='s_suppkey',
    strategy='timestamp',
    updated_at='_etl_updated_timestamp',
)}}

select * from {{ source('tpch', 'supplier') }}

{% endsnapshot %}