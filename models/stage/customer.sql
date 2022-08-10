{{ config(
    alias= 'customer'
    schema= 'TEST_STAGE',
    database= 'TEST_DB' 
)}}

SELECT * 
FROM {{ source('TEST_SOURCE', 'CUSTOMER') }}
where C_CUSTKEY NOT IN (14);