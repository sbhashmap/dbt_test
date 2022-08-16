{{ config(
    alias= 'orders',
    schema= 'TEST_STAGE',
    database= 'TEST_DB' 
)}}

SELECT * 
FROM {{ source('TEST_SOURCE', 'ORDERS') }}
