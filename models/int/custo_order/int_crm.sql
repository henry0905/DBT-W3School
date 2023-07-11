SELECT 
    cus.*
    , ord.*
    , ship.ShipperName
    , emp.*
FROM {{ ref('stg_order') }} AS ord
LEFT JOIN {{ ref('stg_customer') }} AS cus
ON cus._CustomerID_ = ord.CustomerID
LEFT JOIN {{ ref('t_seed_shippers') }} AS ship
ON ord.ShipperID = ship.ShipperID
LEFT JOIN  {{ ref('stg_employee') }} AS emp
ON ord.EmployeeID = emp._EmployeeID_

