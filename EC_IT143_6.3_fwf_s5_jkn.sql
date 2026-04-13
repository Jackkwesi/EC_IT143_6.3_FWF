-- EC_IT143_6.3_fwf_s5_jkn.sql

IF OBJECT_ID('dbo.ufn_GetFirstName', 'FN') IS NOT NULL
    DROP FUNCTION dbo.ufn_GetFirstName;
GO

CREATE FUNCTION dbo.ufn_GetFirstName (@FullName VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @SpacePos INT = CHARINDEX(' ', @FullName);

    IF @SpacePos = 0
        RETURN @FullName;

    RETURN LEFT(@FullName, @SpacePos - 1);
END
GO