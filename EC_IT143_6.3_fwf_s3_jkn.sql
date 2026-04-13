-- EC_IT143_6.3_fwf_s3_jn.sql

SELECT 
    ContactName,
    LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName
FROM dbo.t_w3_schools_customers;