{{ config(
    alias= 'customer',
    schema= 'TEST_STAGE',
    database= 'TEST_DB',
    unique_key= 'C_CUSTKEY',
    incremental_strategy= 'merge'
)}}

SELECT * 
FROM {{ source('TEST_SOURCE', 'CUSTOMER') }} 

{% if is_incremental() %}
where C_CUSTKEY > (select max(C_CUSTKEY) from {{ this }})
{% endif %}