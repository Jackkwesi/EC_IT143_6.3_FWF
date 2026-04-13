-- EC_IT143_6.3_fwf_s6_jn.sql

SELECT 
    ContactName,

    -- Original logic (ad-hoc extraction)
    CASE 
        WHEN CHARINDEX(' ', ContactName) > 0
        THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
        ELSE ContactName
    END AS AdHocFirstName,

    -- Function-based result
    dbo.ufn_GetFirstName(ContactName) AS FunctionFirstName

FROM dbo.t_w3_schools_customers;