USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[User_Total]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Total](
	[create_date] [date] NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[social] [varchar](50) NOT NULL,
	[marital] [varchar](50) NOT NULL,
	[ismos] [varchar](50) NOT NULL,
	[child] [varchar](50) NOT NULL,
	[registration] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[district] [varchar](50) NOT NULL,
	[num_count] [int] NOT NULL,
	[num_poll] [int] NOT NULL,
	[num_achieve] [int] NOT NULL,
	[num_novelty] [int] NOT NULL,
	[num_event] [int] NOT NULL,
	[num_active] [int] NOT NULL,
	[num_invite] [int] NOT NULL,
	[num_count_del] [int] NOT NULL DEFAULT ((0)),
	[num_poll_del] [int] NOT NULL DEFAULT ((0)),
	[num_achieve_del] [int] NOT NULL DEFAULT ((0)),
	[num_novelty_del] [int] NOT NULL DEFAULT ((0)),
	[num_event_del] [int] NOT NULL DEFAULT ((0)),
	[num_active_del] [int] NOT NULL DEFAULT ((0)),
	[num_invite_del] [int] NOT NULL DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
