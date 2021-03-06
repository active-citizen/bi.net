USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[User_Answer]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Answer](
	[id] [int] NOT NULL,
	[create_date] [date] NOT NULL,
	[user_id] [int] NOT NULL,
	[answer_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[poll_id] [int] NOT NULL,
	[title] [nvarchar](max) NULL,
 CONSTRAINT [PK_User_answer_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[User_Answer]  WITH CHECK ADD  CONSTRAINT [FK_User_answer_answer_id] FOREIGN KEY([answer_id])
REFERENCES [dbo].[Answer] ([id])
GO
ALTER TABLE [dbo].[User_Answer] CHECK CONSTRAINT [FK_User_answer_answer_id]
GO
ALTER TABLE [dbo].[User_Answer]  WITH CHECK ADD  CONSTRAINT [FK_User_answer_poll_id] FOREIGN KEY([poll_id])
REFERENCES [dbo].[Poll] ([id])
GO
ALTER TABLE [dbo].[User_Answer] CHECK CONSTRAINT [FK_User_answer_poll_id]
GO
ALTER TABLE [dbo].[User_Answer]  WITH CHECK ADD  CONSTRAINT [FK_User_answer_question_id] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[User_Answer] CHECK CONSTRAINT [FK_User_answer_question_id]
GO
ALTER TABLE [dbo].[User_Answer]  WITH CHECK ADD  CONSTRAINT [FK_User_answer_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Answer] CHECK CONSTRAINT [FK_User_answer_user_id]
GO
