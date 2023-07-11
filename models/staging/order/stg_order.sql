SELECT
    _OrderID_
    , CustomerID
    , EmployeeID
    , FORMAT_DATE('%m-%d-%Y',OrderDate) AS OrderDate
    , ShipperID
FROM {{ source('order', 't_orders') }}