SELECT
    _EmployeeID_
    , LastName
    , FirstName
    , FORMAT_DATE('%m-%d-%Y',BirthDate) AS BirthDate
FROM {{ source('employee', 't_employees') }}