select   urun,kategori_id,tarih
from dbo.BiUrun  inner Join BiFatura as fatura on BiUrun.urun_id= fatura.urun_id
where MONTH(tarih) = 3
