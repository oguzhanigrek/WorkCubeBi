DECLARE @first AS INT = 1
DECLARE @last AS INT = 6

WHILE(@first <= @last)

BEGIN
    INSERT INTO dbo.BiKategori (kategori)VALUES( @first)
    SET @first += 1
END