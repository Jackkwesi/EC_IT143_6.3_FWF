-- EC_IT143_6.3_fwf_s4_jkn.sql

/********************************************************************************************
NAME:    Research - String Functions for First Name Extraction
PURPOSE: Demonstrate how SQL string functions can be used to safely extract first names
         from a full name field (ContactName)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   ----------------------------------------------------------
1.0      2026-04-13  JKN           Initial research documentation for CHARINDEX + LEFT usage

NOTES:
This script documents the learning process behind extracting first names from a full name.
It supports understanding of how SQL string functions work together in data transformation.
********************************************************************************************/

-- Research Sources:
-- https://learn.microsoft.com/en-us/sql/t-sql/functions/charindex-transact-sql
-- https://learn.microsoft.com/en-us/sql/t-sql/functions/left-transact-sql

-- Key Learning:
-- CHARINDEX identifies the position of a space within a string
-- LEFT extracts characters from the beginning of a string up to a defined position
-- Combining these functions enables reliable extraction of first names from full names