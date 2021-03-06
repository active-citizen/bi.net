USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[User_Scoring]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Scoring](
	[id] [int] NOT NULL,
	[fill] [int] NOT NULL,
	[group] [int] NOT NULL,
	[os] [varchar](100) NULL,
	[device] [varchar](100) NULL,
	[is_subscr] [bit] NOT NULL,
	[num_point_max] [int] NOT NULL,
	[num_point_spend] [int] NOT NULL,
	[num_poll] [int] NOT NULL,
	[num_answer] [int] NOT NULL,
	[num_novelty] [int] NOT NULL,
	[num_event] [int] NOT NULL,
	[num_achieve] [int] NOT NULL,
	[num_invite] [int] NOT NULL,
 CONSTRAINT [PK_User_Scoring_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[User_Scoring]  WITH CHECK ADD  CONSTRAINT [FK_User_Scoring_Fill_id] FOREIGN KEY([fill])
REFERENCES [dbo].[Fill] ([id])
GO
ALTER TABLE [dbo].[User_Scoring] CHECK CONSTRAINT [FK_User_Scoring_Fill_id]
GO
ALTER TABLE [dbo].[User_Scoring]  WITH CHECK ADD  CONSTRAINT [FK_User_Scoring_Group_id] FOREIGN KEY([group])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[User_Scoring] CHECK CONSTRAINT [FK_User_Scoring_Group_id]
GO
