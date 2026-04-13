-- EC_IT143_6.3_fwf_s7_jkn.sql

WITH cte AS (
    SELECT 
        ContactName,
        dbo.ufn_GetFirstName(ContactName) AS FirstName
    FROM dbo.t_w3_schools_customers
)

SELECT *
FROM cte
WHERE FirstName IS NULL
   OR FirstName = '';


   -- Expected result: 0 rows if function is working correctly