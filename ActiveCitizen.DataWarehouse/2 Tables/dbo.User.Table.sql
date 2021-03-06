USE [ActiveCitizen.DataWarehouse]
GO
/****** Object:  Table [dbo].[User]    Script Date: 23.05.2016 14:42:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[sso_id] [char](36) NOT NULL,
	[pgu_id] [char](36) NULL,
	[lastname] [varchar](50) NULL,
	[firstname] [varchar](50) NULL,
	[middlename] [varchar](50) NULL,
	[birthday] [date] NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](50) NULL,
	[num_child] [int] NULL,
	[sex] [int] NULL,
	[marital] [int] NULL,
	[social] [int] NULL,
	[ismos] [int] NULL,
	[age] [int] NULL,
	[child] [int] NULL,
	[registration] [int] NOT NULL,
	[registration_date] [date] NOT NULL,
	[active_date] [date] NOT NULL,
	[num_post] [int] NULL,
	[num_point_cur] [int] NOT NULL,
	[res_region] [int] NULL,
	[res_district] [int] NULL,
	[res_address] [varchar](255) NULL,
	[res_unom] [int] NULL,
	[res_unad] [int] NULL,
	[res_street] [varchar](255) NULL,
	[res_building] [varchar](255) NULL,
	[reg_region] [int] NULL,
	[reg_district] [int] NULL,
	[reg_address] [varchar](255) NULL,
	[reg_unom] [int] NULL,
	[reg_unad] [int] NULL,
	[reg_street] [varchar](255) NULL,
	[reg_building] [varchar](255) NULL,
	[work_region] [int] NULL,
	[work_district] [int] NULL,
	[work_address] [varchar](255) NULL,
	[work_unom] [int] NULL,
	[work_unad] [int] NULL,
	[work_street] [varchar](255) NULL,
	[work_building] [varchar](255) NULL,
	[region] [int] NULL,
	[district] [int] NULL,
	[modified] [datetime2](6) NULL,
	[address] [varchar](255) NULL,
 CONSTRAINT [PK_User_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_age] FOREIGN KEY([age])
REFERENCES [dbo].[Age] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_age]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_child] FOREIGN KEY([child])
REFERENCES [dbo].[Child] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_child]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_district] FOREIGN KEY([district])
REFERENCES [dbo].[District] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_district]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_marital] FOREIGN KEY([marital])
REFERENCES [dbo].[Marital] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_marital]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_reg_district] FOREIGN KEY([reg_district])
REFERENCES [dbo].[District] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_reg_district]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_reg_region] FOREIGN KEY([reg_region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_reg_region]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_region] FOREIGN KEY([region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_region]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_registration] FOREIGN KEY([registration])
REFERENCES [dbo].[Registration] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_registration]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_res_district] FOREIGN KEY([res_district])
REFERENCES [dbo].[District] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_res_district]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_res_region] FOREIGN KEY([res_region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_res_region]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_sex] FOREIGN KEY([sex])
REFERENCES [dbo].[Sex] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_sex]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_social] FOREIGN KEY([social])
REFERENCES [dbo].[Social] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_social]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_work_district] FOREIGN KEY([work_district])
REFERENCES [dbo].[District] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_work_district]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_work_region] FOREIGN KEY([work_region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_work_region]
GO
