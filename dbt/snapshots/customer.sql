{% snapshot customer %}
    {{
        config(
            target_schema='SNAPSHOTS',
            unique_key='C_CUSTKEY',
            strategy='check',
            check_cols=['C_NAME','C_ADDRESS','C_NATIONKEY','C_PHONE']
        )
    }}
    
    select * from {{ source('raw_source', 'customer') }}
{% endsnapshot %}