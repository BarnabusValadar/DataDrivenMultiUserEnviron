-- =============================================
-- Author:		Jimbo Jones
-- Create date: 2019-09-01
-- Description:	https://stackoverflow.com/questions/55652141/creating-a-visual-dice-roller-with-t-sql-just-for-fun
-- =============================================
CREATE PROCEDURE usp_VisualDiceRoller
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
DECLARE @Rows TABLE ([Row] INT, [1] NCHAR(1), [2] NCHAR(1), [3] NCHAR(1));
DECLARE @Number INT;
DECLARE @Count INT = 1;
DECLARE @Dice INT = 2;

WHILE @Count <= @Dice
BEGIN
SET @Number = ROUND(RAND(CONVERT(VARBINARY,NEWID()))*6,0,1)+1;

INSERT INTO @Rows ([Row], [1], [2], [3]) VALUES
(
     1
    ,CASE WHEN @Number < 4 THEN N'' ELSE N'•' END
    ,N''
    ,CASE WHEN @Number = 1 THEN N'' ELSE N'•' END
),
(
     2
    ,CASE WHEN @Number <> 6 THEN N'' ELSE N'•' END
    ,CASE WHEN @Number % 2 = 0 THEN N'' ELSE N'•' END
    ,CASE WHEN @Number <> 6 THEN N'' ELSE N'•' END
),
(
     3
    ,CASE WHEN @Number = 1 THEN N'' ELSE N'•' END
    ,N''
    ,CASE WHEN @Number < 4 THEN N'' ELSE N'•' END
);

SELECT [1], [2], [3] FROM @Rows ORDER BY [Row];
DELETE FROM @Rows;

SET @Count += 1;
END