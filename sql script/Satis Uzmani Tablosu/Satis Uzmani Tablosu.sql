USE [WorkCube]
GO

/****** Object:  Table [dbo].[BiSatisUzmani]    Script Date: 16.01.2019 12:49:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BiSatisUzmani](
	[satisuzmani_id] [int] IDENTITY(1,1) NOT NULL,
	[satisuzmani] [int] NULL,
	[sube_id] [int] NULL,
 CONSTRAINT [PK_BiSatisUzmani] PRIMARY KEY CLUSTERED 
(
	[satisuzmani_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BiSatisUzmani]  WITH CHECK ADD  CONSTRAINT [FK_BiSatisUzmani_BiSube] FOREIGN KEY([sube_id])
REFERENCES [dbo].[BiSube] ([sube_id])
GO

ALTER TABLE [dbo].[BiSatisUzmani] CHECK CONSTRAINT [FK_BiSatisUzmani_BiSube]
GO


