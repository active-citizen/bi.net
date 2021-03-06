USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[Poll_Total]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Poll_Total](
	[poll] [varchar](255) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[social] [varchar](50) NOT NULL,
	[marital] [varchar](50) NOT NULL,
	[ismos] [varchar](50) NOT NULL,
	[child] [varchar](50) NOT NULL,
	[registration] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[district] [varchar](50) NOT NULL,
	[num_count] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
