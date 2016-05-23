USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[Achieve]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Achieve](
	[month] [date] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[body] [varchar](255) NOT NULL,
	[num_count] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
