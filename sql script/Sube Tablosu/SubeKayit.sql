

 DECLARE @first AS INT = 1
DECLARE @last AS INT = 5

WHILE(@first <= @last)

BEGIN
    INSERT INTO dbo.BiSube (sube)VALUES( @first)
    SET @first += 1
END