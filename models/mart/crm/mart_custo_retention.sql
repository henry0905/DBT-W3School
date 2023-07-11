SELECT
    Country
    , _CustomerID_
    , COUNT(_OrderID_) AS count_orders
FROM {{ ref('int_crm') }}
GROUP BY 1,2
