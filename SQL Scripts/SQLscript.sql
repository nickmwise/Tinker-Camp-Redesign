USE [tinker]
GO
/****** Object:  Table [dbo].[Children_Objects]    Script Date: 6/19/2017 11:02:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Children_Objects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[First] [varchar](255) NOT NULL,
	[Last] [varchar](255) NOT NULL,
	[Age] [int] NOT NULL,
	[Grade] [int] NOT NULL,
	[Gender] [varchar](255) NULL,
	[Race] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip] [varchar](255) NULL,
	[Phone] [int] NULL,
	[Session_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[parent_children]    Script Date: 6/19/2017 11:02:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parent_children](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NOT NULL,
	[child_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parent_Object]    Script Date: 6/19/2017 11:02:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[First] [varchar](255) NULL,
	[Last] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[City] [varchar](255) NOT NULL,
	[State] [varchar](255) NOT NULL,
	[ZIP] [varchar](255) NOT NULL,
	[Phone] [int] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Code] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sessions_Object]    Script Date: 6/19/2017 11:02:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions_Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [First]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Last]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Age]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Grade]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Gender]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Race]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Zip]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[Children_Objects] ADD  DEFAULT (NULL) FOR [Session_id]
GO
ALTER TABLE [dbo].[parent_children] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[parent_children] ADD  DEFAULT (NULL) FOR [child_id]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [First]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Last]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [City]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [State]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [ZIP]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[Parent_Object] ADD  DEFAULT (NULL) FOR [Code]
GO
