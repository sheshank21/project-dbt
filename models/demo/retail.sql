{{
    config
    (
        materialized='table'
    )
}}

with retail_source as
(
    SELECT 
    INDEX as ID,
    CUSTOMERID,
    INVOICENO,
    DESCRIPTION,
    QUANTITY,
    INVOICEDATE,
    UNITPRICE,
    COUNTRY,
    CURRENT_TIMESTAMP as INSERT_DTS
    FROM {{source("retail","RETAIL_RAW")}}
)

SELECT * FROM retail_source