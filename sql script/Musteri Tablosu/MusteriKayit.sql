
DECLARE @first AS INT = 1
DECLARE @last AS INT = 2860
DECLARE @musteri as nvarchar(50) = 'musteri'

DECLARE @FromDate DATETIME2(0)
DECLARE @ToDate   DATETIME2(0)

SET @FromDate = '2018-01-01 00:00:01' 
SET @ToDate = '2018-12-31 23:00:00'

DECLARE @Seconds INT = DATEDIFF(SECOND, @FromDate, @ToDate)
DECLARE @Random INT = ROUND(((@Seconds-1) * RAND()), 0)

DECLARE @UrunID INT;
DECLARE @Upper INT;
DECLARE @Lower INT

 SET @Lower = 1 ---- The lowest random number
 SET @Upper = 6 ---- One more than the highest random number
WHILE(@first <= @last)


BEGIN
    INSERT INTO dbo.BiMusteri (musteri_adi,tarih,urun_id)VALUES('Musteri '+Convert(varchar(10),@first),DATEADD(SECOND, @Random, @FromDate),@UrunID)
     SET @first += 1
     SET @Seconds = DATEDIFF(SECOND, @FromDate, @ToDate)
     SET @Random  = ROUND(((@Seconds-1) * RAND()), 0)
	 SET  @UrunID = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
	 
END







