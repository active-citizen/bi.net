USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] NOT NULL,
	[title] [varchar](4000) NOT NULL,
	[poll_id] [int] NOT NULL,
 CONSTRAINT [PK_Question_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_poll_id] FOREIGN KEY([poll_id])
REFERENCES [dbo].[Poll] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_poll_id]
GO
