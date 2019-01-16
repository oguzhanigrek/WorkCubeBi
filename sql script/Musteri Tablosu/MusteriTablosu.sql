USE [WorkCube]
GO

/****** Object:  Table [dbo].[BiMusteri]    Script Date: 16.01.2019 12:48:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BiMusteri](
	[musteri_id] [int] IDENTITY(1,1) NOT NULL,
	[musteri_adi] [nvarchar](50) NULL,
	[tarih] [datetime] NULL,
	[urun_id] [int] NULL,
 CONSTRAINT [PK_BiMusteri] PRIMARY KEY CLUSTERED 
(
	[musteri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BiMusteri]  WITH CHECK ADD  CONSTRAINT [FK_BiMusteri_BiUrun] FOREIGN KEY([urun_id])
REFERENCES [dbo].[BiUrun] ([urun_id])
GO

ALTER TABLE [dbo].[BiMusteri] CHECK CONSTRAINT [FK_BiMusteri_BiUrun]
GO


