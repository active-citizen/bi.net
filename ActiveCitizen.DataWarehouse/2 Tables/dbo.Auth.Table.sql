USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[Auth]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[create_date] [date] NOT NULL,
	[os] [varchar](100) NULL,
	[device] [varchar](100) NULL,
	[url] [varchar](100) NULL,
	[registration] [bit] NOT NULL,
 CONSTRAINT [PK_Auth_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Auth]  WITH CHECK ADD  CONSTRAINT [FK_Auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Auth] CHECK CONSTRAINT [FK_Auth_user_id]
GO
