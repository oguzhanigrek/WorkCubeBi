


DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT
DECLARE @first AS INT = 1
DECLARE @last AS INT = 22


WHILE(@first <= @last)

BEGIN
    INSERT INTO dbo.BiSatisUzmani(satisuzmani,sube)VALUES( @first,@Random) 
	 SET @First += 1
	 SET @Lower = 1 ---- The lowest random number
	 SET @Upper = 5 ---- One more than the highest random number
	 SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
END


truncate table BiSatisUzmani














DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT
SET @Lower = 3 ---- The lowest random number
SET @Upper = 7 ---- One more than the highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
SELECT @Random