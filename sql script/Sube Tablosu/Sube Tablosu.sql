USE [WorkCube]
GO

/****** Object:  Table [dbo].[BiSube]    Script Date: 16.01.2019 12:49:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BiSube](
	[sube_id] [int] IDENTITY(1,1) NOT NULL,
	[sube] [int] NULL,
 CONSTRAINT [PK_BiSube] PRIMARY KEY CLUSTERED 
(
	[sube_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


