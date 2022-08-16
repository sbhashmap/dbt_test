{{ config(
    alias= 'customer_orders',
    schema= 'TEST_PUBLISH',
    database= 'TEST_DB' 
)}}

SELECT C.*, O.* 
FROM {{ source('TEST_SOURCE', 'CUSTOMER') }} C
    left join {{ source('TEST_SOURCE', 'ORDERS')}} O
        on C.C_CUSTKEY = O.O_CUSTKEY
