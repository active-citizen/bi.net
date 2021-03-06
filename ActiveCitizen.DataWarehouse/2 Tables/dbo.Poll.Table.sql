USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Poll](
	[id] [int] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[category] [int] NOT NULL,
	[points] [int] NOT NULL,
	[num_max] [int] NOT NULL,
	[num_count] [int] NOT NULL,
 CONSTRAINT [PK_Poll_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Poll]  WITH CHECK ADD  CONSTRAINT [FK_Poll_category] FOREIGN KEY([category])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Poll] CHECK CONSTRAINT [FK_Poll_category]
GO
