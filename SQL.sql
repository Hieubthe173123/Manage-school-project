USE [SWP391c]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/16/2024 10:19:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[aid] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role] [varchar](50) NULL,
	[pid] [int] NULL,
	[lid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityTime]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityTime](
	[atid] [int] NOT NULL,
	[classID] [int] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[activity] [varchar](100) NULL,
	[isFix] [bit] NULL,
	[sid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[atid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age](
	[ageid] [int] NOT NULL,
	[aname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[classID] [int] NOT NULL,
	[clname] [varchar](100) NULL,
	[lid] [int] NULL,
	[rid] [int] NULL,
	[ageid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Session]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Session](
	[csid] [int] NOT NULL,
	[classID] [int] NULL,
	[sid] [int] NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[csid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[fid] [int] NOT NULL,
	[ftitle] [varchar](255) NULL,
	[fcontent] [text] NULL,
	[ftimeFeedback] [timestamp] NOT NULL,
	[stuid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[fid] [int] NOT NULL,
	[fname] [varchar](100) NULL,
	[calo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturers]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturers](
	[lid] [int] NOT NULL,
	[lname] [varchar](100) NULL,
	[gender] [char](1) NULL,
	[dob] [date] NULL,
	[phoneNumber] [varchar](15) NULL,
	[IDCard] [varchar](20) NULL,
	[Address] [varchar](255) NULL,
	[Email] [varchar](100) NULL,
	[NickName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MealTime]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MealTime](
	[mealID] [int] NOT NULL,
	[mealName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mealID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[mid] [int] NOT NULL,
	[fid] [int] NULL,
	[ageid] [int] NULL,
	[date] [date] NULL,
	[mealid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[pid] [int] NOT NULL,
	[pname] [varchar](100) NULL,
	[gender] [char](1) NULL,
	[dob] [date] NULL,
	[phoneNumber] [varchar](15) NULL,
	[IDCard] [varchar](20) NULL,
	[Address] [varchar](255) NULL,
	[Email] [varchar](100) NULL,
	[NickName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolYear]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolYear](
	[yid] [int] IDENTITY(1,1) NOT NULL,
	[dateFrom] [date] NULL,
	[dateEnd] [date] NULL,
	[sid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[yid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sid] [int] NOT NULL,
	[activity] [varchar](100) NULL,
	[ageid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 5/16/2024 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stuid] [int] NOT NULL,
	[sname] [varchar](100) NULL,
	[age] [int] NULL,
	[dob] [date] NULL,
	[gender] [char](1) NULL,
	[address] [varchar](255) NULL,
	[pid] [int] NULL,
	[classID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturers] ([lid])
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Parent] ([pid])
GO
ALTER TABLE [dbo].[ActivityTime]  WITH CHECK ADD FOREIGN KEY([classID])
REFERENCES [dbo].[Class] ([classID])
GO
ALTER TABLE [dbo].[ActivityTime]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[Session] ([sid])
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([ageid])
REFERENCES [dbo].[Age] ([ageid])
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturers] ([lid])
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Class_Session]  WITH CHECK ADD FOREIGN KEY([classID])
REFERENCES [dbo].[Class] ([classID])
GO
ALTER TABLE [dbo].[Class_Session]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[Session] ([sid])
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD FOREIGN KEY([stuid])
REFERENCES [dbo].[Student] ([stuid])
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([ageid])
REFERENCES [dbo].[Age] ([ageid])
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([fid])
REFERENCES [dbo].[Food] ([fid])
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([mealid])
REFERENCES [dbo].[MealTime] ([mealID])
GO
ALTER TABLE [dbo].[SchoolYear]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[Session] ([sid])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([ageid])
REFERENCES [dbo].[Age] ([ageid])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([classID])
REFERENCES [dbo].[Class] ([classID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Parent] ([pid])
GO
