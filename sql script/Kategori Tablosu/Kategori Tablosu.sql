USE [WorkCube]
GO

/****** Object:  Table [dbo].[BiKategori]    Script Date: 16.01.2019 12:47:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BiKategori](
	[kategori_id] [int] IDENTITY(1,1) NOT NULL,
	[kategori] [int] NULL,
 CONSTRAINT [PK_BiKategori] PRIMARY KEY CLUSTERED 
(
	[kategori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


