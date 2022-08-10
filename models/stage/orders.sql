{{ config(
    alias= 'customer'
    schema= 'TEST_STAGE',
    database= 'TEST_DB' 
)}}

SELECT * FROM "TEST_DB"."TEST_SOURCE"."ORDERS"