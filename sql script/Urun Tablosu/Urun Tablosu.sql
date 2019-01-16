USE [WorkCube]
GO

/****** Object:  Table [dbo].[BiUrun]    Script Date: 16.01.2019 12:50:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BiUrun](
	[urun_id] [int] IDENTITY(1,1) NOT NULL,
	[urun] [int] NULL,
	[kategori_id] [int] NULL,
 CONSTRAINT [PK_BiUrun] PRIMARY KEY CLUSTERED 
(
	[urun_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BiUrun]  WITH CHECK ADD  CONSTRAINT [FK_BiUrun_BiKategori] FOREIGN KEY([kategori_id])
REFERENCES [dbo].[BiKategori] ([kategori_id])
GO

ALTER TABLE [dbo].[BiUrun] CHECK CONSTRAINT [FK_BiUrun_BiKategori]
GO


