
DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT
DECLARE @first AS INT = 1
DECLARE @last AS INT = 155


WHILE(@first <= @last)

BEGIN
    INSERT INTO dbo.BiUrun(urun,kategori_id)VALUES( @first,@Random) 
	 SET @First += 1
	 SET @Lower = 1 ---- The lowest random number
	 SET @Upper = 6 ---- One more than the highest random number
	 SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
END
