SELECT
    DATE_TRUNC('month', sale_date) AS sale_month,
    SUM(total_amount) AS monthly_revenue
FROM {{ ref('stg_sales') }}
GROUP BY 1;