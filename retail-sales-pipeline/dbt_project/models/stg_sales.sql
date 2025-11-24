SELECT
    sale_id,
    product,
    quantity,
    price,
    quantity * price AS total_amount,
    sale_date
FROM {{ source('raw', 'raw_sales') }};