USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[User_Achieve]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Achieve](
	[id] [int] NOT NULL,
	[create_date] [date] NOT NULL,
	[user_id] [int] NOT NULL,
	[month] [date] NOT NULL,
 CONSTRAINT [PK_User_achieve_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[User_Achieve]  WITH CHECK ADD  CONSTRAINT [FK_User_Achieve_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Achieve] CHECK CONSTRAINT [FK_User_Achieve_user_id]
GO
