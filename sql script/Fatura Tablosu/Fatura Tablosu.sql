USE [WorkCube]
GO

/****** Object:  Table [dbo].[BiFatura]    Script Date: 16.01.2019 12:51:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BiFatura](
	[fatura_id] [int] IDENTITY(1,1) NOT NULL,
	[faturaNo] [nvarchar](50) NULL,
	[musteri_id] [int] NULL,
	[satis_id] [int] NULL,
	[tarih] [datetime] NULL,
	[urun_id] [int] NULL,
	[sube_id] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[fatura_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BiFatura]  WITH CHECK ADD  CONSTRAINT [FK_BiFatura_BiMusteri1] FOREIGN KEY([musteri_id])
REFERENCES [dbo].[BiMusteri] ([musteri_id])
GO

ALTER TABLE [dbo].[BiFatura] CHECK CONSTRAINT [FK_BiFatura_BiMusteri1]
GO

ALTER TABLE [dbo].[BiFatura]  WITH CHECK ADD  CONSTRAINT [FK_BiFatura_BiSatisUzmani] FOREIGN KEY([satis_id])
REFERENCES [dbo].[BiSatisUzmani] ([satisuzmani_id])
GO

ALTER TABLE [dbo].[BiFatura] CHECK CONSTRAINT [FK_BiFatura_BiSatisUzmani]
GO

ALTER TABLE [dbo].[BiFatura]  WITH CHECK ADD  CONSTRAINT [FK_BiFatura_BiSube] FOREIGN KEY([sube_id])
REFERENCES [dbo].[BiSube] ([sube_id])
GO

ALTER TABLE [dbo].[BiFatura] CHECK CONSTRAINT [FK_BiFatura_BiSube]
GO

ALTER TABLE [dbo].[BiFatura]  WITH CHECK ADD  CONSTRAINT [FK_BiFatura_BiUrun] FOREIGN KEY([urun_id])
REFERENCES [dbo].[BiUrun] ([urun_id])
GO

ALTER TABLE [dbo].[BiFatura] CHECK CONSTRAINT [FK_BiFatura_BiUrun]
GO


