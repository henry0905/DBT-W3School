SELECT
    _CustomerID_
    , CustomerName
    , ContactName
    , City
    , PostalCode
    , CASE LOWER(Country)
        WHEN 'usa' THEN 'United States'
        WHEN 'uk' THEN 'United Kingdom'
        ELSE Country
    END AS Country
FROM {{ source('customer', 't_customers') }}