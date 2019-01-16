
DECLARE @first AS INT = 1
DECLARE @last AS INT = 9824

DECLARE @FromDate DATETIME2(0)
DECLARE @ToDate   DATETIME2(0)

SET @FromDate = '2018-01-01 00:00:01' 
SET @ToDate = '2018-12-31 23:00:00'

DECLARE @Seconds INT = DATEDIFF(SECOND, @FromDate, @ToDate)
DECLARE @Random INT = ROUND(((@Seconds-1) * RAND()), 0)

DECLARE @MusteriID INT;
DECLARE @MusteriUpper INT;
DECLARE @MusteriLower INT

DECLARE @satisID INT;
DECLARE @satisUpper INT;
DECLARE @satisLower INT

DECLARE @urunID INT;
DECLARE @urunUpper INT;
DECLARE @urunLower INT

DECLARE @subeID INT  = 1;
DECLARE @subeUpper INT;
DECLARE @subeLower INT

 SET @MusteriUpper = 1 ---- The lowest random number
 SET @MusteriLower = 2860 ---- One more than the highest random number

  SET @subeUpper = 1 ---- The lowest random number
 SET @subeLower = 5 ---- One more than the highest random number

  SET @urunUpper = 1 ---- The lowest random number
 SET @urunLower = 155 ---- One more than the highest random number

 SET @satisLower = 1 ---- The lowest random number
 SET @satisUpper = 22 ---- One more than the highest random number
WHILE(@first <= @last)


BEGIN
    INSERT INTO dbo.BiFatura (faturaNo,musteri_id,satis_id,tarih,urun_id,sube_id)VALUES(@first,@MusteriID,@satisID,DATEADD(SECOND, @Random, @FromDate),@urunID,@subeID)
     SET @first += 1
     SET @Seconds = DATEDIFF(SECOND, @FromDate, @ToDate)
     SET @Random  = ROUND(((@Seconds-1) * RAND()), 0)
	 SET  @MusteriID = ROUND(((@MusteriUpper - @MusteriLower -1) * RAND() + @MusteriLower), 0)
	 SET  @satisID = ROUND(((@satisUpper - @satisLower -1) * RAND() + @satisLower), 0)
	 SET  @urunID = ROUND(((@urunUpper - @urunLower -1) * RAND() + @urunLower), 0)
	 SET  @subeID = ROUND(((@subeUpper - @subeLower -1) * RAND() + @subeLower), 0)
	 
END







