
select sube,kategori,urun from dbo.BiSube 
inner join BiFatura as fatura on BiSube.sube_id = fatura.sube_id 
inner join BiUrun  as urun on fatura.urun_id = urun.urun_id 
inner join BiKategori as kategori on urun.kategori_id = kategori.kategori_id


where kategori = 3