USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billing](
	[id] [int] NOT NULL,
	[create_date] [date] NOT NULL,
	[user_id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[refill] [bit] NOT NULL,
	[reason] [nvarchar](255) NOT NULL,
	[points_plus] [int] NOT NULL,
	[points] [int] NOT NULL,
	[cur_points] [int] NOT NULL,
 CONSTRAINT [PK_Billing_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK_Billing_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK_Billing_user_id]
GO
