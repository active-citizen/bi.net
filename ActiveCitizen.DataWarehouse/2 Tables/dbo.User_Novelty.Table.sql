USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[User_Novelty]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Novelty](
	[id] [int] NOT NULL,
	[create_date] [date] NOT NULL,
	[user_id] [int] NOT NULL,
	[novelty_id] [int] NOT NULL,
	[rating_id] [int] NOT NULL,
 CONSTRAINT [PK_User_Novelty_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[User_Novelty]  WITH CHECK ADD  CONSTRAINT [FK_User_novelty_novelty_id] FOREIGN KEY([novelty_id])
REFERENCES [dbo].[Novelty] ([id])
GO
ALTER TABLE [dbo].[User_Novelty] CHECK CONSTRAINT [FK_User_novelty_novelty_id]
GO
ALTER TABLE [dbo].[User_Novelty]  WITH CHECK ADD  CONSTRAINT [FK_User_novelty_rating_id] FOREIGN KEY([rating_id])
REFERENCES [dbo].[Rating] ([id])
GO
ALTER TABLE [dbo].[User_Novelty] CHECK CONSTRAINT [FK_User_novelty_rating_id]
GO
ALTER TABLE [dbo].[User_Novelty]  WITH CHECK ADD  CONSTRAINT [FK_User_novelty_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Novelty] CHECK CONSTRAINT [FK_User_novelty_user_id]
GO
