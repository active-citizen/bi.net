USE [AG_DW]
GO
/****** Object:  Table [dbo].[Achieve]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Achieve](
	[month] [date] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[body] [varchar](255) NOT NULL,
	[num_count] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Age]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Age](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Age_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Answer](
	[id] [int] NOT NULL,
	[title] [varchar](500) NOT NULL,
	[question_id] [int] NOT NULL,
 CONSTRAINT [PK_Answer_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[Billing]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Category_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Child]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Child](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Child_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_district_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event](
	[id] [int] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[type] [int] NOT NULL,
	[points] [int] NOT NULL,
	[num_count] [int] NOT NULL,
 CONSTRAINT [PK_Event_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Event_Total]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event_Total](
	[event] [varchar](255) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[social] [varchar](50) NOT NULL,
	[marital] [varchar](50) NOT NULL,
	[ismos] [varchar](50) NOT NULL,
	[child] [varchar](50) NOT NULL,
	[registration] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[district] [varchar](50) NOT NULL,
	[num_count] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fill]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fill](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Fill_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Group]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Group](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Group_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IsMos]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IsMos](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ismos_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marital]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marital](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Merital_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mos_Code]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mos_Code](
	[def] [int] NOT NULL,
	[range1] [int] NOT NULL,
	[range2] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Novelty]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Novelty](
	[id] [int] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[num_count] [int] NOT NULL,
	[num_rating] [decimal](3, 2) NOT NULL,
 CONSTRAINT [PK_Novelty_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Novelty_Total]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Novelty_Total](
	[novelty] [varchar](255) NOT NULL,
	[rating] [varchar](50) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[social] [varchar](50) NOT NULL,
	[marital] [varchar](50) NOT NULL,
	[ismos] [varchar](50) NOT NULL,
	[child] [varchar](50) NOT NULL,
	[registration] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[district] [varchar](50) NOT NULL,
	[num_count] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[Poll_Total]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Poll_Total](
	[poll] [varchar](255) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[social] [varchar](50) NOT NULL,
	[marital] [varchar](50) NOT NULL,
	[ismos] [varchar](50) NOT NULL,
	[child] [varchar](50) NOT NULL,
	[registration] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[district] [varchar](50) NOT NULL,
	[num_count] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rating](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rating_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_region_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registration]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Registration_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sex]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sex](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sex_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Social]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Social](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Social_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Type_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[User_Achieve]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[User_Answer]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[User_Child]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Child](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[birth] [date] NOT NULL,
 CONSTRAINT [PK_User_child_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Event]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Event](
	[id] [int] NOT NULL,
	[create_date] [date] NOT NULL,
	[user_id] [int] NOT NULL,
	[event_id] [int] NOT NULL,
 CONSTRAINT [PK_User_event_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Inviting]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Inviting](
	[id] [int] NOT NULL,
	[create_date] [date] NOT NULL,
	[user_id] [int] NOT NULL,
	[phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_inviting_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Novelty]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[User_Scoring]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  Table [dbo].[User_Total]    Script Date: 22.05.2016 19:24:16 ******/
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
/****** Object:  View [dbo].[Голосования]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Голосования]

as
select 
       id         [Код]
      ,title      [Описание]
      ,start_date [Начало]
      ,end_date   [Конец]
      ,category   [Категория]
      ,points     [Баллы]
      ,num_max    [План]
      ,num_count  [Факт]   
from poll




GO
/****** Object:  View [dbo].[Зарегистрированные]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














CREATE VIEW [dbo].[Зарегистрированные]

as
select
	   us.id									[Код АГ]
      ,isnull(lastname,'')						[Фамилия]
      ,isnull(firstname,'')						[Имя]
      ,isnull(middlename,'')					[Отчество]
      ,DATEDIFF(DAY,registration_date,GETDATE())[От регистрации]
      ,DATEDIFF(DAY,active_date, GETDATE())		[От активности]
 	  ,num_point_cur							[Баллы]
	  ,[num_point_max]							[Баллы(max)]
      ,num_poll									[Голосования]
      ,[num_answer]								[Свои ответы]
      ,[num_novelty]							[Новости]
      ,[num_event]								[События]
      ,[num_achieve]							[Достижения]
      ,[num_invite]								[Приглашения]
      ,isnull(num_post,'')						[Посты]
      ,iif( se.id = 404, '',se.title)			[Пол]
 	  ,case
		when ma.id = 404 then ''
		when se.id = 0 and ma.id = 0 then 'Женат'
		when se.id = 0 and ma.id = 1 then 'Холост'
		when se.id = 1 and ma.id = 0 then 'Замужем'
		else 'Не замужем'
	   end										[Сем.полож]
      ,iif( so.id = 404, '',so.title)			[Соц.статус]
      ,isnull(num_child,'')						[Дети]
	  ,iif( mo.id = 404, '',mo.title)			[Код телефона]
	  ,isnull(birthday,'')						[Рождение]
	  ,DATEDIFF(YEAR,birthday, 
		GETDATE())+(SIGN(DATEDIFF(DAY,birthday, 
		DATEADD(YEAR, YEAR(birthday)-YEAR(
		GETDATE()), GETDATE())))-1)/2			[Возраст]
      ,isnull(phone,'')							[Телефон]
	  ,isnull(address,'')						[Адрес]
      ,isnull(email,'')							[Мэйл]
      ,isnull(sso_id,'')						[Код в СУДИР]
 
 from [User] us, sex se, ismos mo, marital ma, social so, User_Scoring sc
 where registration_date > GETDATE() - 80 
 and se.id = us.sex and mo.id = us.ismos and ma.id = us.marital and so.id = us.social and us.id = sc.id
  and num_point_max < num_point_cur --and us.id = 1832482
 














GO
/****** Object:  View [dbo].[Новости]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[Новости]

as
SELECT 
       id         [Код]
      ,title      [Описание]
      ,start_date [Начало]
      ,end_date   [Конец]
      ,num_count  [Факт]
      ,num_rating [Рейтинг]
  FROM [AG_DW].[dbo].[Novelty]
  




GO
/****** Object:  View [dbo].[События]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[События]

as
SELECT 
       id         [Код]
      ,title      [Описание]
      ,start_date [Начало]
      ,end_date   [Конец]
      ,num_count  [Факт]
      --,type       [Тип]
 FROM [AG_DW].[dbo].[Event]  






GO
/****** Object:  View [dbo].[Структура пользователей]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Структура пользователей]

as
select  
        age               [Возраст]
       ,sex               [Пол]
       ,social            [Социальный статус]
       ,marital           [Семейное положение]
	   ,ismos             [Код телефона]
       ,child             [Дети]
       ,registration      [Регистрация]
       ,region            [Активность]
      
 
 from [User_total] 
 



GO
/****** Object:  View [dbo].[Структура событий]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[Структура событий]

as
select  
		event			  [События]
       ,age               [Возраст]
       ,sex               [Пол]
       ,social            [Соц.статус]
       ,marital           [Сем.положение]
	   ,ismos             [Москвич]
       ,child             [Дети]
       ,registration      [Регистрация]
       ,region            [Округ]
       ,district          [Район]
	   ,num_count		  [Количество]
      
 
 from [Event_total] 
 






GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_question_id] FOREIGN KEY([question_id])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_question_id]
GO
ALTER TABLE [dbo].[Auth]  WITH CHECK ADD  CONSTRAINT [FK_Auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Auth] CHECK CONSTRAINT [FK_Auth_user_id]
GO
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK_Billing_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK_Billing_user_id]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_type] FOREIGN KEY([type])
REFERENCES [dbo].[Type] ([id])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_type]
GO
ALTER TABLE [dbo].[Poll]  WITH CHECK ADD  CONSTRAINT [FK_Poll_category] FOREIGN KEY([category])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Poll] CHECK CONSTRAINT [FK_Poll_category]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_poll_id] FOREIGN KEY([poll_id])
REFERENCES [dbo].[Poll] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_poll_id]
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
ALTER TABLE [dbo].[User_Achieve]  WITH CHECK ADD  CONSTRAINT [FK_User_Achieve_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Achieve] CHECK CONSTRAINT [FK_User_Achieve_user_id]
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
ALTER TABLE [dbo].[User_Child]  WITH CHECK ADD  CONSTRAINT [FK_User_child_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Child] CHECK CONSTRAINT [FK_User_child_user_id]
GO
ALTER TABLE [dbo].[User_Event]  WITH CHECK ADD  CONSTRAINT [FK_User_event_event_id] FOREIGN KEY([event_id])
REFERENCES [dbo].[Event] ([id])
GO
ALTER TABLE [dbo].[User_Event] CHECK CONSTRAINT [FK_User_event_event_id]
GO
ALTER TABLE [dbo].[User_Event]  WITH CHECK ADD  CONSTRAINT [FK_User_event_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Event] CHECK CONSTRAINT [FK_User_event_user_id]
GO
ALTER TABLE [dbo].[User_Inviting]  WITH CHECK ADD  CONSTRAINT [FK_User_Inviting_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Inviting] CHECK CONSTRAINT [FK_User_Inviting_user_id]
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
/****** Object:  StoredProcedure [dbo].[Assess_per_week]    Script Date: 22.05.2016 19:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Assess_per_week]
	@data_begin varchar(10) = '2016.01.01',
	@data_end varchar(10) = '2016.02.01'
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		COUNT(DISTINCT user_id) AS [Оценившие за неделю] 
	FROM
		User_Novelty
	WHERE
		create_date >= @data_begin AND create_date < @data_end
END
GO
