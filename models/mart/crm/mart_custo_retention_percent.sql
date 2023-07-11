WITH 
    count_country AS (
        SELECT
            Country
            , COUNT(DISTINCT _CustomerID_) AS total_customers_each_country
            , COUNT(DISTINCT CASE WHEN count_orders >= 2 THEN _CustomerID_ END) AS customers_at_least_2_orders
        FROM {{ ref('mart_custo_retention') }}
        GROUP BY 1
    ),
    custo_total AS (
        SELECT
            COUNT(DISTINCT _CustomerID_) AS total_customers
        FROM {{ ref('stg_customer') }}  
    )
SELECT
    count_country.Country
    , ROUND((customers_at_least_2_orders*100)/count_country.total_customers_each_country,2) AS retention_percent
    , ROUND(count_country.total_customers_each_country*100/custo_total.total_customers,2) AS percent_customer_each_country
    FROM count_country, custo_total