{% snapshot schedule_a_pub_snapshot %}

{{
    config(
    target_database='TEST_DB',
    target_schema='TEST_PUBLISH',
    unique_key='C_CUSTKEY',

    strategy='check',
    check_cols=['C_CUSTKEY', 'C_NAME','C_ADDRESS',
    'C_NATIONKEY', 'C_PHONE', 'C_ACCTBAL', 'C_MKTSEGMENT',
    'C_COMMENT'], 

    )
}}

select * from {{ref('CUSTOMER')}}

{% endsnapshot %}